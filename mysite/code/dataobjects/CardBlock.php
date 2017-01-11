<?php
class CardBlock extends TextBlock {

	private static $has_many = array(
		'Cards' => 'Card'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		if ($this->ID) {
			$fields->dataFieldByName('Cards')
				->getConfig()
				->addComponent(new GridFieldOrderableRows('Sort'));
		}

		return $fields;
	}

	/**
	 * Get column number
	 *
	 * @return int
	 */
	public function ColNum() {
		if ($this->Cards()) {
			return 12 / $this->Cards()->Count();
		}

		return 12;
	}

}