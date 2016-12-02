<?php
class SiteConfig_Extension extends DataExtension {

	/**
	 * Set has one
	 * 
	 * @var array
	 */
	private static $has_one = array(
		'Logo' => 'Image'
	);

	public function updateCMSFields(FieldList $fields) {
		$fields->addFieldToTab(
			'Root.Main', 
			UploadField::create('Logo', 'Logo')
		);
	}
}