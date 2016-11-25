<?php
class ImageGalleryBlock extends Block {

	private static $db = array(
		'Content' => 'HTMLText'
	);

	private static $has_many = array(
		'ImageGalleries' => 'ImageGallery'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('ImageGalleries');
		$fields->dataFieldByName('Content')
			->setRows(20);

		$fields->insertAfter(
			GridField::create(
				'ImageGalleries', 
				'Images', 
				$this->ImageGalleries(), 
				GridFieldConfig_RecordEditor::create()
					->addComponent(new GridFieldBulkUpload())
					->addComponent(new GridFieldSortableRows('SortOrder'))
			), 
			'Content'
		);

		return $fields;
	}
}