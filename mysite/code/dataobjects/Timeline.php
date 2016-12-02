<?php
class Timeline extends DataObject {

	private static $db = array(
		'Title' => 'Text', 
		'Date' => 'Date', 
		'Content' => 'Text', 
	);

	private static $has_one = array(
		'Block' => 'TimelineBlock'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BlockID')
		);

		$fields->dataFieldByName('Date')
			->setConfig('showcalendar', true);

		$fields->replaceField(
			'Title', 
			TextField::create('Title', 'Title')
		);

		return $fields;
	}
}