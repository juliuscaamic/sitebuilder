<?php
class HeaderBlock extends TextBlock {

	private static $has_one = array(
		'Image' => 'Image', 
		'NavigationBackgroundColor' => 'Color'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab(
			'Root.Color', 
			$fields->dataFieldByName('NavigationBackgroundColor', 'Nav Background Color')
		);

		return $fields;
	}
}