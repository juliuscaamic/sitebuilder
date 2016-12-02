<?php
/**
 * Represents the banner images
 *
 * @author Julius <julius@sentromedia.com>
 */
class BlockBanner extends DataObject {

	/**
	 * Set the properties
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
		'BackgroundImage' => 'Image', 
		'Block' => 'HeroBlock'
	);

	/**
	 * Set has many
	 * 
	 * @var array
	 */
	private static $has_many = array(
		'Buttons' => 'BlockButton'
	);

	/**
	 * Set singular name
	 * 
	 * @var string
	 */
	private static $singular_name = 'Banner';

	/**
	 * Set plural name
	 * 
	 * @var string
	 */
	private static $plural_name = 'Banners';

	/**
	 * Get CMS fields
	 * 
	 * @return FieldList
	 */
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('BlockID');
		$fields->replaceField(
			'Title', 
			TextField::create('Title', 'Title')
		);

		$fields->dataFieldByName('Content')
			->setRows(20);

		return $fields;
	}

	/**
	 * Get the index number starting to 0
	 * 
	 * @param [type] $index [description]
	 */
	public function IndexNumber($index) {
		return (int)$index - 1;
	}
}