<?php
class HeaderBlock extends TextBlock {

	private static $db = array(
		'NavigationBackgroundColor' => 'Color'
	);

	private static $has_one = array(
		'Image' => 'Image'
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