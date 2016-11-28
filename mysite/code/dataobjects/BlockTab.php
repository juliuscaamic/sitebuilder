<?php
class BlockTab extends DataObject {

	private static $db = array(
		'TabTitle' => 'Text',
		'Title' => 'Text', 
		'Content' => 'HTMLText'
	);

	private static $has_one = array(
		'TabIcon' => 'Image', 
		'Image' => 'Image', 
		'Block' => 'TabBlock'
	);

	private static $has_many = array(
		'Buttons' => 'BlockButton'
	);

	private static $singular_name = 'Tab';

	private static $plural_name = 'Tabs';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BlockID')
		);

		$fields->replaceField(
			'TabTitle', 
			TextField::create('TabTitle', 'Tab Title')
		);

		$fields->replaceField(
			'Title', 
			TextField::create('Title', 'Title')
		);

		$fields->dataFieldByName('Content')
			->setRows(20);

		return $fields;
	}
}