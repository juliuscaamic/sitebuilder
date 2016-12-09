<?php
class ContactBlock extends MapBlock {

	private static $db = array(
		'Address' => 'Text', 
		'Contact' => 'Text'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BackgroundImage', 'BackgroundColor')
		);

		return $fields;
	}
}