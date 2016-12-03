<?php
class TimelineBlock extends TextBlock {

	private static $has_many = array(
		'Timelines' => 'Timeline'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Buttons');

		return $fields;
	}
}