<?php
class PricingBlock extends TextBlock {

	private static $has_many = array(
		'Packages' => 'PricingPackage'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Buttons');

		return $fields;
	}
}