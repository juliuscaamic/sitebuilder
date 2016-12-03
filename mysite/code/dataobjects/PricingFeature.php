<?php
class PricingFeature extends DataObject {

	private static $db = array(
		'Title' => 'Text'
	);

	private static $has_one = array(
		'Package' => 'PricingPackage'
	);

	public function getCMSFields(){
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('PackageID')
		);

		$fields->replaceField(
			'Title', 
			TextField::create('Title', 'Title')
		);

		return $fields;
	}
}