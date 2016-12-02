<?php
class ContentBlock_Extension extends DataExtension {

	private static $db = array(
		'BackgroundColor' => 'Color'
	);

	private static $has_one= array(
		'BackgroundImage' => 'Image'
	);

	private static $has_many = array(
		'Buttons' => 'BlockButton'
	);

	public function updateCMSFields(FieldList $fields) {

		$fields->insertBefore(
			'BackgroundImage', 
			$fields->dataFieldByName('BackgroundColor')
		);

		$fields->addFieldToTab(
			'Root.Main', 
			UploadField::create('BackgroundImage', 'Background Image')
		);
	}
}