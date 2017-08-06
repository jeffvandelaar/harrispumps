<?php

class ImageContentBlock extends ContentBlock {

	protected static $singular_name = 'Full Width Image';
	protected static $plural_name   = 'Full Width Image Blocks';

	private static $has_one = [
		'Image' => 'Image',

	];

	public function getCMSFields() {

		$this->beforeUpdateCMSFields(function (FieldList $fields) {
			$fields->addFieldsToTab('Root.Main', [
				UploadField::create('Image')->setFolderName('Images/Content_Blocks'),
			]);
		});

		$fields = parent::getCMSFields();

		return $fields;
	}

}