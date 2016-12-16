<?php
class FooterBlock extends Block {

	private static $db = array(
		'CopyrightText' => 'HTMLText', 
		'Type' => 'Enum("Small, Big", "Small")'
	);

	private static $has_many = array(
		'Menus' => 'FooterMenu'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Buttons');
		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('Buttons')
		);

		$fields->dataFieldByName('CopyrightText')
			->setRows(20);

		return $fields;
	}
}