<?php
class TabBlock extends TextBlock {

	private static $has_many = array(
		'Tabs' => 'BlockTab'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('Content', 'Buttons')
		);

		$fields->addFieldToTab(
			'Root.Main', 
			GridField::create(
				'Tabs', 
				'Tabs', 
				$this->owner->Tabs(), 
				GridFieldConfig_RelationEditor::create()
			)
		);

		return $fields;
	}
}