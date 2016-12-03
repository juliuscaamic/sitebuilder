<?php
class Card extends DataObject {

	private static $db = array(
		'Title' => 'Text', 
		'Content' => 'HTMLText', 
		'BackgroundColor' => 'Color'
	);

	private static $has_one = array(
		'Block' => 'CardBlock', 
		'Image' => 'Image', 
		'BackgroundImage' => 'Image'
	);

	private static $has_many = array(
		'Buttons' => 'BlockButton'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BlockID')
		);

		$fields->replaceField(
			'Title', 
			TextField::create('Title', 'Title')
		);

		$fields->insertBefore(
			'BackgroundImage', 
			$fields->dataFieldByName('BackgroundColor')
		);

		$fields->dataFieldByName('Content')
			->setRows(20);

		return $fields;
	}
}