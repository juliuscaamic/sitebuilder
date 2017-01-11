<?php
class PillBlock extends TabBlock {
	/**
	 * Sets properties
	 * 
	 * @var array
	 */
	private static $db = array(
		'Position' => 'Enum("Horizontal, Vertical", "Horizontal")'
	);

	/**
	 * Check position is vertical
	 *
	 * @return Boolean
	 */
	public function IsVertical() {
		return ($this->Position == 'Vertical') ? true : false;
	}

	/**
	 * Check position is vertical
	 *
	 * @return Boolean
	 */
	public function IsHorizontal() {
		return ($this->Position == 'Horizontal') ? true : false;
	}
}