<?php
class MultiImageBlock extends TextBlock {

	private static $has_many = array(
		'BlockImages' => 'BlockImage'
	);
}