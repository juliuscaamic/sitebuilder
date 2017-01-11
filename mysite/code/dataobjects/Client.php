<?php
class Client extends DataObject {

	private static $db = array(
		'Title' => 'Varchar'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		return $fields;
	}
}