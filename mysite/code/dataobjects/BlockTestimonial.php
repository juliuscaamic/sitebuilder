<?php
class BlockTestimonial extends DataObject {

	private static $db = array(
		'Title' => 'Text', 
		'Position' => 'Text', 
		'Content' => 'Text'
	);

	private static $has_one= array(
		'Block' => 'TestimonialBlock', 
		'Image' => 'Image'
	);

	private static $has_many = array(
		'Buttons' => 'BlockButton'
	);

	private static $singular_name = 'Testimonial';

	private static $plural_name = 'Testimonials';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BlockID')
		);

		$fields->replaceField(
			'Title', 
			TextField::create('Title', 'Name')
		);

		$fields->replaceField(
			'Position', 
			TextField::create('Position', 'Position')
		);

		return $fields;
	}
}