<?php
class FooterBlock extends Block {

	private static $db = array(
		'CopyrightText' => 'HTMLText'
	);

	private static $has_many = array(
		'Menus' => 'FooterMenu'
	);

	private static $many_many = array(
		'SocialMediaAccounts' => 'SocialMediaAccount'
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