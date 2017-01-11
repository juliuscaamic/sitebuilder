<?php
class SubscribeBlock extends TextBlock {
	
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('Buttons')
		);

		return $fields;
	}
}