<?php
class HeaderBlock extends TextBlock {

	private static $has_many = array(
		'Banners' => 'BlockBanner'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Title');
		$fields->removeByName('Content');
		$fields->removeByName('Buttons');
		$fields->removeByName('Banners');

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BackgroundImage')
		);

		$fields->addFieldToTab(
			'Root.Main', 
			GridField::create(
				'Banners', 
				'Banners', 
				$this->owner->Banners(), 
				GridFieldConfig_RelationEditor::create()
			)
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