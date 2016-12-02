<?php
class TeamMember extends DataObject {

	private static $db = array(
		'Title' => 'Text', 
		'Position' => 'Text', 
		'Content' => 'Text'
	);

	private static $has_one = array(
		'Block' => 'TeamBlock', 
		'Image' => 'Image'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BlockID')
		);

		$fields->replaceField(
			'Title', 
			TextField::create('Title', 'Name')
		);

		$fields->replaceField(
			'Position', 
			TextField::create('Position', 'Position')
		);

		return $fields;
	}
}