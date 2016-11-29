<?php
class ContactBlock extends MapBlock {

	private static $db = array(
		'Address' => 'Text', 
		'Contact' => 'Text'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		return $fields;
	}
}