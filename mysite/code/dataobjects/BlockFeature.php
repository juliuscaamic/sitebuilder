<?php
class BlockFeature extends DataObject {

	private static $db = array(
		'Title' => 'Text',
		'Content' => 'Text', 
		'Icon' => 'Varchar', 
		'IconColor' => 'Color'
	);

	private static $has_one = array(
		'RedirectPage' => 'SiteTree', 
		'Block' => 'FeatureBlock'
	);

	private static $has_many = array(
		'Buttons' => 'BlockButton'
	);

	private static $singular_name = 'Feature';

	private static $plural_name = 'Features';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->replaceField(
			'Title', 
			TextField::create('Title', 'Title')
		);

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BlockID')
		);

		$fields->replaceField(
			'RedirectPageID', 
			TreeDropdownField::create("RedirectPageID", "Choose a redirect page:", "SiteTree")
		);

		return $fields;
	}
}