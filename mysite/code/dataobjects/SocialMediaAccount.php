<?php
class SocialMediaAccount extends DataObject {

	private static $db = array(
		'Title' => 'Text', 
		'Address' => 'Text', 
		'Icon' => 'Varchar'
	);

	private static $belongs_many_many = array(
		'FooterBlock' => 'FooterBlock', 
		'FooterSmallBlock' => 'FooterSmallBlock', 
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('FooterBlock');
		$fields->removeByName('FooterSmallBlock');

		$fields->replaceField(
			'Title', 
			TextField::create('Title', 'Title')
		);

		$fields->replaceField(
			'Address', 
			TextField::create('Address', 'Address')
		);

		return $fields;
	}
}