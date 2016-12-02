<?php
class HeaderBlock extends TextBlock {

	private static $has_one = array(
		'Image' => 'Image'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		return $fields;
	}
}