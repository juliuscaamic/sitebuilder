<?php
class CardBlock extends TextBlock {

	private static $has_many = array(
		'Cards' => 'Card'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		return $fields;
	}
}