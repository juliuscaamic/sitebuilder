<?php
class ImageGallery extends DataObject {

	private static $db = array(
		'Title' => 'Varchar', 
		'SortOrder' => 'Int'
	);

	private static $has_one = array(
		'Block' => 'ImageGalleryBlock',
		'Image' => 'Image'
	);

	private static $summary_fields = array(
		'Thumbnail' => 'Image', 
		'Title' => 'Title'
	);

	private static $default_sort = 'SortOrder';

	private static $singular_name = 'Image';

	private static $plural_name = 'Images';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('BlockID')
		);

		return $fields;
	}

	public function Thumbnail() {
		return $this->Image()->CMSThumbnail();
	}
}