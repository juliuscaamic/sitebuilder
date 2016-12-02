<?php
/**
 * Represents the image block
 *
 * @author Julius <julius@sentromedia.com>
 */
class ImageBlock extends TextBlock {

	/**
	 * Set properties
	 * 
	 * @var array
	 */
	private static $db = array(
		'Position' => 'Enum("Right, Left", "Right")'
	);

	/**
	 * Set has one
	 * 
	 * @var array
	 */
	private static $has_one = array(
		'Image' => 'Image'
	);

	/**
	 * Set singular name
	 * 
	 * @return string
	 */
    public function singular_name(){
        return 'Image Block';
    }

    /**
     * Set plural name
     * 
     * @return string
     */
    public function plural_name(){
        return 'Image Blocks';
    }

	public function fieldLabels($includeRelations = true){
		return array_merge(
			parent::fieldLabels($includeRelations),
			array(
				'Content' => _t('Block.Content', 'Content'), 
				'RedirectButtonTitle' => 'Button Text', 
				'Position' => 'Image Position', 
				'RedirectPage' => 'Button Redirect Page', 
				'Image' => 'Image'
			)
		);
	}

	/**
	 * Get CMS Fields
	 * 
	 * @return FieldList
	 */
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->replaceField(
			'RedirectPageID', 
			TreeDropdownField::create("RedirectPageID", "Choose a redirect page", "SiteTree")
		);	

		return $fields;
	}

	/**
	 * image position on the right
	 *
	 * @return boolean
	 */
	public function ImageRight() {
		return ($this->Position == 'Right') ? true : false;
	}

	/**
	 * Image position on the left
	 *
	 * @return boolean
	 */
	public function ImageLeft() {
		return ($this->Position == 'Left') ? true : false;
	}
}