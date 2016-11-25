<?php
class FormBlock extends Block {

	private static $db = array(
		'Content' => 'HTMLText'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->dataFieldByName('Content')
			->setRows(20);

		return $fields;
	}
}