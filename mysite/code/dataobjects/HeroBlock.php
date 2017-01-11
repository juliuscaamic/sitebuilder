<?php
/**
 * Represents the Hero block
 * 
 * @author Julius <julius@sentromedia.com>
 */
class HeroBlock extends TextBlock {

	/**
	 * Sets the properties
	 * 
	 * @var array
	 */
	private static $db = array(
		'NavigationDisplay' => 'Enum("Fixed, Transparent", "Fixed")', 
		'NavigationBackgroundColor' => 'Color', 
		'NavigationTextColor' => 'Color'
	);

	/**
	 * Sets has many
	 * 
	 * @var array
	 */
	private static $has_many = array(
		'Banners' => 'BlockBanner'
	);

	/**
	 * Get CMS Fields
	 * 
	 * @return FieldList
	 */
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Title');
		$fields->removeByName('Content');
		$fields->removeByName('Buttons');

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BackgroundImage', 'BackgroundColor')
		);

		$fields = $this->getNavigationFields($fields);

		return $fields;
	}

	/**
	 * Get Navigation Fields
	 * 
	 * @param  [type] &$fields [description]
	 * @return FieldList
	 */
	private function getNavigationFields(&$fields) {
		$fields->addFieldToTab(
			'Root.Navigation', 
			$fields->dataFieldByName('NavigationDisplay')
				->setTitle('Display')
		);

		$fields->addFieldToTab(
			'Root.Navigation', 
			$fields->dataFieldByName('NavigationBackgroundColor')
				->setTitle('Background Color')
		);

		$fields->addFieldToTab(
			'Root.Navigation', 
			$fields->dataFieldByName('NavigationTextColor')
				->setTitle('Text Color')
		);

		return $fields;
	}

	public function IsRotatingBanner() {
		if ($this->Banners()->Count() > 1) {
			return true;
		}

		return false;
	}
}