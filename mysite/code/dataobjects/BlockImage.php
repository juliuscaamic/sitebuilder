<?php
/**
 * Represents the block images
 *
 * @author Julius <julius@sentromedia.com>
 */
class BlockImage extends DataObject {

	/**
	 * Set properties
	 * 
	 * @var array
	 */
	private static $db = array(
		'Title' => 'Text', 
		'Content' => 'HTMLText'
	);

	/**
	 * Set has one
	 * 
	 * @var array
	 */
	private static $has_one = array(
		'MultiImageBlock' => 'MultiImageBlock', 
		'RedirectPage' => 'SiteTree', 
		'Image' => 'File'
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
			array('MultiImageBlockID')
		);

		$fields->replaceField(
			'Title', 
			TextField::create('Title', 'Title')
		);

		$fields->dataFieldByName('Content')
			->setRows(20);

		$fields->replaceField(
			'RedirectPageID', 
			TreeDropdownField::create("RedirectPageID", "Choose a redirect page", "SiteTree")
		);

		return $fields;
	}
}