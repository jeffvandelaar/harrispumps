<?php

class DoubleTextContentBlock extends ContentBlock {

	protected static $singular_name = 'Double Text';
	protected static $plural_name   = 'Double Text Blocks';

	private static $db = [
		'Content'          => 'HTMLText',
		'SecondaryContent' => 'HTMLText',
	];

	public function getCMSFields() {

		$this->beforeUpdateCMSFields(function (FieldList $fields) {
			$fields->addFieldsToTab('Root.Main', [
				HtmlEditorField::create('Content'),
				HtmlEditorField::create('SecondaryContent')
			]);
		});

		$fields = parent::getCMSFields();

		return $fields;
	}

}