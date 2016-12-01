<?php
class SiteConfig_Extension extends DataExtension {

	public function updateCMSFields(FieldList $fields) {

		/*$fields->addFieldToTab(
			'Root.FooterMenus', 
			GridField::create(
				'FooterMenus', 
				'Footer Menus', 
				$this->owner->FooterMenus(), 
				GridFieldConfig_RecordEditor::create()
					->addComponent(new GridFieldSortableRows('SortOrder'))
			)
		);*/
	}
}