<?php
class TimelineBlock extends TextBlock {

	private static $has_many = array(
		'Timelines' => 'Timeline'
	);
}