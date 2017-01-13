<?php
/**
 * Represents the buttons
 *
 * @author Julius <julius@sentromedia.com>
 */
class BlockButton extends DataObject {

	/**
	 * Set properties
	 * 
	 * @var array
	 */
	private static $db = array(
		'Title' => 'Varchar', 
		'Icon' => 'Varchar', 
		'TextColor' => 'Color', 
		'BackgroundColor' => 'Color', 
		'TriggerOption' => 'Enum("Redirect, Popup", "Redirect")', 
		'PopupBlockID' => 'Int'
	);

	/**
	 * Set has one
	 * 
	 * @var array
	 */
	private static $has_one = array(
		'Block' => 'Block', 
		'Banner' => 'BlockBanner', 
		'Tab' => 'BlockTab', 
		'Testimonial' => 'BlockTestimonial', 
		'Card' => 'Card', 
		'Pricing' => 'PricingPackage', 
		'Feature' => 'BlockFeature', 
		'RedirectPage' => 'SiteTree', 
	);

	/**
	 * Set singular name
	 * 
	 * @var string
	 */
	private static $singular_name = 'Button';

	/**
	 * Set plural name
	 * 
	 * @var string
	 */
	private static $plural_name = 'Buttons';

	/**
	 * Get CMS fields
	 * 
	 * @return FieldList
	 */
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BlockID', 'BannerID', 'TabID', 'TestimonialID', 'CardID', 'PricingID', 'FeatureID', 'RedirectPageID', 'PopupBlockID')
		);

		$fields->addFieldToTab(
			'Root.Main', 
			OptionsetField::create(
				'TriggerOption', 
				'Action', 
				$this->dbObject('TriggerOption')->enumValues(), 
				'Redirect'
			)
		);

		$blockIds = array();
		$pageID = $this->Banner()->Block()->getCurrentPage()->currentPageID();
		$page = SiteTree::get()->byID($pageID);
		$blocks = $page->Blocks();
		foreach ($blocks as $block) {
			if ($block->Display == 'Popup') {
				$blockIds[$block->ID] = $block->ClassName;
			}
		}

		if ($this->TriggerOption && $this->TriggerOption == 'Popup') {
			$fields->insertAfter(
				'TriggerOption', 
				DropdownField::create('PopupBlockID', 'Choose block', $blockIds)
				->setEmptyString('Choose a block set as popup')
			);
		} else {
			$fields->insertAfter(
				'TriggerOption', 
				TreeDropdownField::create('RedirectPageID', 'Choose page', 'SiteTree')
			);
		}

		$fields->addFieldToTab(
			'Root.Colors', 
			$fields->dataFieldByName('TextColor', 'Text Color')
		);

		$fields->addFieldToTab(
			'Root.Colors', 
			$fields->dataFieldByName('BackgroundColor', 'Background Color')
		);

		return $fields;
	}
} 