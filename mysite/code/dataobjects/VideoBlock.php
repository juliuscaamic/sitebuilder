<?php
class VideoBlock extends TextBlock {

	private static $db = array(
		'Position' => 'Enum("Right, Left", "Right")', 
		'VideoURL' => 'Text'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		return $fields;
	}

	/**
	 * video position on the right
	 *
	 * @return boolean
	 */
	public function VideoRight() {
		return ($this->Position == 'Right') ? true : false;
	}

	/**
	 * Video position on the left
	 *
	 * @return boolean
	 */
	public function VideoLeft() {
		return ($this->Position == 'Left') ? true : false;
	}	
}