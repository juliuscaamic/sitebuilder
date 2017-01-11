<?php
class FooterMenu extends DataObject {

	private static $db = array(
		'Title' => 'Varchar',
		'SortOrder' => 'Int'
	);

	private static $has_one= array(
		'Block' => 'FooterBlock'
	);

	private static $has_many = array(
		'Pages' => 'FooterMenuPage'
	);

	private static $singular_name = 'Menu';

	private static $plural_name = 'Menus';

	private static $default_sort = 'SortOrder';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Pages');

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('SortOrder', 'BlockID')
		);

		if ($this->ID) {
			$fields->addFieldToTab(
				'Root.Main', 
				GridField::create(
					'Pages', 
					'Footer Pages', 
					$this->owner->Pages(), 
					GridFieldConfig_RecordEditor::create()->addComponent(new GridFieldSortableRows('SortOrder'))
				)
			);
		}

		return $fields;
	}
}