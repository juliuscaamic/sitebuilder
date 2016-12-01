<?php
/**
 * Represents the tab block
 *
 * @author Julius <julius@sentromedia.com>
 */
class TabBlock extends TextBlock {

	/**
	 * Setss has one
	 * 
	 * @var array
	 */
	private static $has_many = array(
		'Tabs' => 'BlockTab'
	);

	/**
	 * Get CMS Fields
	 * 
	 * @return FieldList
	 */
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('Content', 'Buttons', 'BackgroundImage')
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