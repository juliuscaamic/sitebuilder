<?php
/**
 * Represents the team block
 * 
 * @author Julius <julius@sentromedia.com>
 */
class TeamBlock extends TextBlock {

	/**
	 * Set has many
	 * 
	 * @var array
	 */
	private static $has_many = array(
		'Members' => 'TeamMember'
	);

	/**
	 * Get CMS Fields
	 * 
	 * @return FieldList
	 */
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		return $fields;
	}

	/**
	 * Get column number
	 *
	 * @return int
	 */
	public function ColNum() {
		if ($this->Members()) {
			return 12 / $this->Members()->Count();
		}

		return 12;
	}
}