<?php
class BlockButton extends DataObject {

	private static $db = array(
		'Title' => 'Varchar'
	);

	private static $has_one = array(
		'Block' => 'Block', 
		'Banner' => 'BlockBanner', 
		'RedirectPage' => 'SiteTree', 
	);

	private static $singular_name = 'Button';

	private static $plural_name = 'Buttons';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BlockID', 'BannerID')
		);

		$fields->replaceField(
			'RedirectPageID', 
			TreeDropdownField::create('RedirectPageID', 'Choose a redirect page', 'SiteTree')
		);

		return $fields;
	}
} 