<?php
class MapBlock extends TextBlock {

	private static  $db = array(
		'Latitude' => 'Text', 
		'Longitude' => 'Text'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->replaceField(
			'Latitude', 
			TextField::create('Latitude', 'Latitude')
		);

		$fields->replaceField(
			'Longitude', 
			TextField::create('Longitude', 'Longitude')
		);

		return $fields;
	}
}