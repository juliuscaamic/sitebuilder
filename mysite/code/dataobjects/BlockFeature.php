<?php
class BlockFeature extends DataObject {

	private static $db = array(
		'Title' => 'Text',
		'Content' => 'Text', 
		'Icon' => 'Varchar'
	);

	private static $has_one = array(
		'Block' => 'FeatureBlock'
	);

	private static $singular_name = 'Feature';

	private static $plural_name = 'Features';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->replaceField(
			'Title', 
			TextField::create('Title', 'Title')
		);

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BlockID')
		);

		return $fields;
	}
}