<?php
class UserDefinedForm_Extension extends DataExtension {

	private static $db = array(
		'FormTitle' => 'Varchar', 
		'FormDescription' => 'HTMLText'
	);

	public function updateCMSFields(FieldList $fields) {
		/*$fields->addFieldToTab(
			'Root.FormFields', 
			TextField::create('FormTitle', 'Title')
		);*/

		$fields->insertAfter(
			'OnCompleteMessage', 
			TextField::create('FormTitle', 'Title')
		);

		$fields->insertAfter(
			'FormTitle', 
			HTMLEditorField::create('FormDescription', 'Description')
				->setRows(10)
		);

	}
}