<?php
class BlockButton extends DataObject {

	private static $db = array(
		'Title' => 'Varchar', 
		'Icon' => 'Varchar'
	);

	private static $has_one = array(
		'Block' => 'Block', 
		'Banner' => 'BlockBanner', 
		'Tab' => 'BlockTab', 
		'Testimonial' => 'BlockTestimonial', 
		'Card' => 'Card', 
		'Pricing' => 'PricingPackage', 
		'RedirectPage' => 'SiteTree', 
	);

	private static $singular_name = 'Button';

	private static $plural_name = 'Buttons';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BlockID', 'BannerID', 'TabID', 'TestimonialID', 'CardID', 'PricingID')
		);

		$fields->replaceField(
			'RedirectPageID', 
			TreeDropdownField::create('RedirectPageID', 'Choose a redirect page', 'SiteTree')
		);

		return $fields;
	}
} 