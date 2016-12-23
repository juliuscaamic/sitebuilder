<?php
/**
 * Represents the generic page
 *
 * @author Julius <julius@sentromedia.com>
 */
class Page extends SiteTree {

	/**
	 * Get CMS Fields
	 * 
	 * @return FieldList
	 */
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		return $fields;
	}
}

/**
 * Represents the page controller
 *
 * @author Julius <julius@sentromedia.com>
 */
class Page_Controller extends ContentController {

	public function init() {
		parent::init();

		Requirements::css('https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons');
		Requirements::css('https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css');
		Requirements::css('themes/materialdesign/css/bootstrap.min.css');
		Requirements::css('themes/materialdesign/css/material-kit.css');
		Requirements::css('themes/materialdesign/css/vertical-nav.css');

		Requirements::css('themes/materialdesign/vendors/material-photo-gallery/css/material-photo-gallery.css');

		Requirements::css('themes/materialdesign/css/custom.css');

		Requirements::javascript('themes/materialdesign/js/jquery.min.js');
		Requirements::javascript('themes/materialdesign/js/bootstrap.min.js');
		Requirements::javascript('themes/materialdesign/js/material.min.js');

		Requirements::javascript('themes/materialdesign/js/nouislider.min.js');
		Requirements::javascript('themes/materialdesign/js/bootstrap-datepicker.js');
		Requirements::javascript('themes/materialdesign/js/jquery.dropdown.js');
		Requirements::javascript('themes/materialdesign/js/jquery.tagsinput.js');
		Requirements::javascript('themes/materialdesign/js/jasny-bootstrap.min.js');

		Requirements::javascript('https://maps.googleapis.com/maps/api/js?key=AIzaSyAHmjHJHUNznEmKIQ_bRqb6k65cR8DefUg');
		Requirements::javascript('themes/materialdesign/js/material-kit.js');

		Requirements::javascript('themes/materialdesign/vendors/material-photo-gallery/js/material-photo-gallery.min.js');
		Requirements::customScript(<<<JS
			var elem = document.querySelector('.m-p-g');
			var gallery = new MaterialPhotoGallery(elem);
JS
		);

		$mapBlocks = $this->Blocks()->filterAny(array('ClassName' => 'MapBlock', 'ClassName' => 'ContactBlock'));
		if ($mapBlocks->exists()) {
			foreach ($mapBlocks as $block) {
				Requirements::customScript(<<<JS
					$(document).ready(function(){
						var lat = $block->Latitude;
						var long = $block->Longitude;
						materialKitDemo.initMap(lat, long);
					});
JS
				);
			}
		}

		Requirements::block('framework/thirdparty/jquery/jquery.js');
		Requirements::block('userforms/thirdparty/jquery-validate/jquery.validate.min.js');
		Requirements::block('framework/javascript/i18n.js');
		Requirements::block('userforms/javascript/lang/en.js');
		Requirements::block('userforms/javascript/lang/en_US.js');
		Requirements::block('userforms/javascript/UserForm.js');
		Requirements::block('userforms/thirdparty/jquery.are-you-sure/jquery.are-you-sure.js');
	}
}
