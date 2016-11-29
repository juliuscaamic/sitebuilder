<?php
class ContentBlock_Extension extends DataExtension {

	private static $has_one= array(
		'BackgroundImage' => 'Image'
	);

	private static $has_many = array(
		'Buttons' => 'BlockButton'
	);

	public function updateCMSFields(FieldList $fields) {
		$fields->removeByName('Buttons');
		$fields->addFieldToTab(
			'Root.Main', 
			GridField::create(
				'Buttons', 
				'Buttons', 
				$this->owner->Buttons(), 
				GridFieldConfig_RelationEditor::create()
			)
		);

		$fields->addFieldToTab(
			'Root.Main', 
			UploadField::create('BackgroundImage', 'Background Image')
		);
	}
}