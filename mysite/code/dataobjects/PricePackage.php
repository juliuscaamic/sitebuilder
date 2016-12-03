<?php
class PricingPackage extends DataObject {

	private static $db = array(
		'Title' => 'Text', 
		'Content' => 'Text', 
		'Currency' => 'Varchar', 
		'Price' => 'Int', 
		'Mode' => 'Enum("Yearly, Monthly", "Monthly")',
		'BackgroundColor' => 'Color'
	);

	private static $has_one = array(
		'Block' => 'PricingBlock', 
		'BackgroundImage' => 'Image'
	);

	private static $has_many = array(
		'Features' => 'PricingFeature', 
		'Buttons' => 'BlockButton'
	);

	private static $singular_name = 'Package';

	private static $plural_name = 'Packages';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BlockID')
		);

		$fields->replaceField(
			'Title', 
			TextField::create('Title', 'Title')
		);

		return $fields;
	}
}