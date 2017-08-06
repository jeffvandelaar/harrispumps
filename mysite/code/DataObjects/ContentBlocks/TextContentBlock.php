<?php

class TextContentBlock extends ContentBlock {

	protected static $singular_name = 'Full Width Text';
	protected static $plural_name   = 'Full Width Text Blocks';

	private static $db = [
		'Content' => 'HTMLText',
	];

	public function getCMSFields() {

		$this->beforeUpdateCMSFields(function (FieldList $fields) {
			$fields->addFieldsToTab('Root.Main', [
				HtmlEditorField::create('Content'),
			]);
		});

		$fields = parent::getCMSFields();

		return $fields;
	}

}