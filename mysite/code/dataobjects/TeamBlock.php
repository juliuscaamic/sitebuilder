<?php
class TeamBlock extends TextBlock {

	private static $has_many = array(
		'Members' => 'TeamMember'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Buttons');

		return $fields;
	}
}