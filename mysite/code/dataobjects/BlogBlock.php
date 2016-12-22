<?php
class BlogBlock extends TextBlock {

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Buttons');
		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('Content', 'BackgroundImage', 'BackgroundColor')
		);

		return $fields;
	}
}