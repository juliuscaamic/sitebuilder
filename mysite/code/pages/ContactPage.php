<?php
class ContactPage extends UserDefinedForm {

	private static $db = array(
		'Address' => 'Text', 
		'Email' => 'Text', 
		'ContactNumber' => 'Text'
	);

	public function getCMSFields(){
		$fields = parent::getCMSFields();

		$fields->insertAfter(
			TextareaField::create('Address', 'Address'), 
			'Content'
		);

		$fields->insertAfter(
			TextareaField::create('Email', 'Email'), 
			'Address'
		);

		$fields->insertAfter(
			TextareaField::create('ContactNumber', 'Contact Number'), 
			'Email'
		);

		return $fields;
	}
}

class ContactPage_Controller extends UserDefinedForm_Controller {

	public function init() {
		parent::init();
	}
}