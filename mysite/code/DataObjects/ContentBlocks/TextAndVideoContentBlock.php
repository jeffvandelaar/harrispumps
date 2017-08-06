<?php

class TextAndVideoContentBlock extends ContentBlock {

	protected static $singular_name = 'Text & Video';
	protected static $plural_name   = 'Text & Video Blocks';

	private static $db = [
		'Content'       => 'HTMLText',
		'VideoPosition' => 'Enum("Left,Right,Top,Bottom", "Left")',
		'VideoID'       => 'Varchar(50)'
	];

	public function getCMSFields() {

		$this->beforeUpdateCMSFields(function (FieldList $fields) {
			$fields->addFieldsToTab('Root.Main', [
				TextField::create('VideoID', 'Video ID'),
				DropdownField::create('VideoPosition', 'Video Position', [
					'Left' => 'Left', 'Right' => 'Right', 'Top' => 'Top', 'Bottom' => 'Bottom'
				]),
			], 'Content');
		});

		$fields = parent::getCMSFields();

		return $fields;
	}

}