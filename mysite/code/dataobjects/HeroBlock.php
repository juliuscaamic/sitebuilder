<?php
class HeroBlock extends TextBlock {

	private static $has_many = array(
		'Banners' => 'BlockBanner'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Title');
		$fields->removeByName('Content');
		$fields->removeByName('Buttons');

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BackgroundImage', 'BackgroundColor')
		);

		return $fields;
	}

	public function IsRotatingBanner() {
		if ($this->Banners()->Count() > 1) {
			return true;
		}

		return false;
	}
}