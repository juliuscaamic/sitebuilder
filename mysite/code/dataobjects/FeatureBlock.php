<?php
class FeatureBlock extends TextBlock {

	private static $has_one = array(
		'Image' => 'Image'
	);

	private static $has_many = array(
		'Features' => 'BlockFeature'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Buttons');

		return $fields;
	}

	/**
	 * Get column number
	 *
	 * @return int
	 */
	public function ColNum() {
		if ($this->Features()) {
			return 12 / $this->Features()->Count();
		}

		return 12;
	}
}