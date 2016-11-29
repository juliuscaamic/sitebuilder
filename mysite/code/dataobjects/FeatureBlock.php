<?php
class FeatureBlock extends TextBlock {

	private static $has_one = array(
		'Image' => 'Image'
	);

	private static $has_many = array(
		'Features' => 'BlockFeature'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Buttons');

		return $fields;
	}
}