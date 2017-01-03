<?php
class HeroBlock extends TextBlock {

	private static $db = array(
		'NavigationBackgroundColor' => 'Color'
	);

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

		$fields->addFieldToTab(
			'Root.Color', 
			$fields->dataFieldByName('NavigationBackgroundColor', 'Nav Background Color')
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