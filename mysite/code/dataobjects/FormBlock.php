<?php
/**
 * Represents form block
 *
 * @author Julius <julius@sentromedia.com>
 */
class FormBlock extends Block {

	/**
	 * Set properties
	 * 
	 * @var array
	 */
	private static $db = array(
		'Content' => 'HTMLText'
	);

	/**
	 * Get CMS Fields
	 * 
	 * @return FieldList
	 */
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->dataFieldByName('Content')
			->setRows(20);

		return $fields;
	}
}