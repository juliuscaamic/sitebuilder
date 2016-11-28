<?php
class Disqus_SiteConfig_Extension extends DataExtension {

	private static $db = array(
		'DisqusShortName' => 'Text', 
		'DisqusEnable' => 'Boolean'
	);

	public function updateCMSFields(FieldList $fields) {
		$fields->addFieldToTab(
			'Root.Disqus', 
			TextField::create('DisqusShortName', 'Short Name')
		);

		$fields->addFieldToTab(
			'Root.Disqus', 
			CheckboxField::create('DisqusEnable', 'Enable')
		);

	}
}