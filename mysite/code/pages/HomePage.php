<?php
class HomePage extends UserDefinedForm {

	private static $icon = 'mysite/images/home.png';
}

class HomePage_Controller extends UserDefinedForm_Controller {

	public function init() {
		parent::init();
	}
}