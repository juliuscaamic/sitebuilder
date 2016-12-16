<?php
class ContactBlock extends MapBlock {

	private static $db = array(
		'Email' => 'Text', 
		'Contact' => 'Text', 
		'Address' => 'Text'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BackgroundImage', 'BackgroundColor')
		);

		$fields->replaceField(
			'Email', 
			TextField::create('Email', 'Email')
		);

		$fields->replaceField(
			'Contact', 
			TextField::create('Contact', 'Contact')
		);

		return $fields;
	}
}