<?php
class ClientBlock extends TextBlock {
	
	private static $db = array(
		'Clients' => 'Client'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		return $fields;
	}
}