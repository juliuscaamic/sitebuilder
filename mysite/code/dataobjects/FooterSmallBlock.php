<?php
class FooterSmallBlock extends Block {

	private static $db = array(
		'CopyrightText' => 'HTMLText'
	);

	private static $has_many = array(
		'MenuPages' => 'FooterMenuPage'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->dataFieldByName('CopyrightText')
			->setRows(20);

		$fields->removeByName('Buttons');

		return $fields;
	}
}