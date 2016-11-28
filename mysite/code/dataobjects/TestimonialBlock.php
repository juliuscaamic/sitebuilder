<?php
class TestimonialBlock extends TextBlock {

	private static $has_many = array(
		'Testimonials' => 'BlockTestimonial'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('Buttons')
		);

		return $fields;
	}
}