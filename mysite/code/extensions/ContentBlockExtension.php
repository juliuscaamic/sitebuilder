<?php
class ContentBlock_Extension extends DataExtension {

	private static $db = array(
		'BackgroundColor' => 'Color', 
		'Alignment' => 'Enum("Left, Center", "Left")', 
		'Display' => 'Enum("Section, Popup", "Section")'
	);

	private static $has_one= array(
		'BackgroundImage' => 'Image'
	);

	private static $has_many = array(
		'Buttons' => 'BlockButton'
	);

	public function updateCMSFields(FieldList $fields) {

		$fields->insertAfter(
			'ClassName', 
			DropdownField::create('Display', 'Block Display', $this->owner->dbObject('Display')->enumValues())
		);

		$fields->insertBefore(
			'BackgroundImage', 
			$fields->dataFieldByName('BackgroundColor')
		);

		$fields->addFieldToTab(
			'Root.Main', 
			UploadField::create('BackgroundImage', 'Background Image')
		);

		$fields->addFieldToTab(
			'Root.Options', 
			DropdownField::create('Alignment', 'Alignment', $this->owner->dbObject('Alignment')->enumValues())
		);
	}
}