<?php

class TextAndImageContentBlock extends ContentBlock {

	protected static $singular_name = 'Text & Image';
	protected static $plural_name   = 'Text & Image Blocks';

	private static $db = [
		'Content'       => 'HTMLText',
		'ImagePosition' => 'Enum("Left,Right,Top,Bottom", "Left")'
	];

	private static $has_one = [
		'Image' => 'Image',

	];

	public function getCMSFields() {

		$this->beforeUpdateCMSFields(function (FieldList $fields) {
			$fields->addFieldsToTab('Root.Main', [
				DropdownField::create('ImagePosition', 'Image Position', [
					'Left' => 'Left', 'Right' => 'Right', 'Top' => 'Top', 'Bottom' => 'Bottom'
				]),
				UploadField::create('Image')->setFolderName('Images/Content_Blocks'),
			], 'Content');
		});

		$fields = parent::getCMSFields();

		return $fields;
	}

}