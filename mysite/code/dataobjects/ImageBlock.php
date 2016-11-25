<?php
class ImageBlock extends TextBlock {

	private static $has_one = array(
		'Image' => 'Image'
	);

    public function singular_name(){
        return 'Image Block';
    }

    public function plural_name(){
        return 'Image Blocks';
    }

	public function fieldLabels($includeRelations = true){
		return array_merge(
			parent::fieldLabels($includeRelations),
			array(
				'Content' => _t('Block.Content', 'Content'), 
				'RedirectButtonTitle' => 'Button Text', 
				'RedirectPage' => 'Button Redirect Page', 
				'Image' => 'Image'
			)
		);
	}

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->replaceField(
			'RedirectPageID', 
			TreeDropdownField::create("RedirectPageID", "Choose a redirect page", "SiteTree")
		);	

		return $fields;
	}
}