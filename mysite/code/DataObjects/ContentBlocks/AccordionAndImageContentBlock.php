<?php

class AccordionAndImageContentBlock extends ContentBlock {

	protected static $singular_name = 'Accordion & Image';
	protected static $plural_name   = 'Accordion & Image Blocks';

	private static $db = [
		'Content'       => 'HTMLText',
		'ImagePosition' => 'Enum("Left,Right,Top,Bottom", "Left")'
	];
	
	private static $has_many = array (
        'Accordions' => 'Accordion',
    );

	private static $has_one = [
		'Image' => 'Image',

	];

	public function getCMSFields() {

		$this->beforeUpdateCMSFields(function (FieldList $fields) {
			$ContentBlocksConfig = GridFieldConfig_RecordEditor::create();
			$ContentBlocksConfig->addComponent(new GridFieldOrderableRows('SortOrder'));
			$fields->addFieldsToTab('Root.Main', [
				DropdownField::create('ImagePosition', 'Image Position', [
					'Left' => 'Left', 'Right' => 'Right', 'Top' => 'Top', 'Bottom' => 'Bottom'
				]),
				UploadField::create('Image')->setFolderName('Images/Content_Blocks'),
			], 'Content');
		});

		$fields = parent::getCMSFields();
		
			$fields->removeFieldFromTab('Root.Main','Content');
		
			$fields->addFieldToTab('Root.Main', GridField::create(
	            'Accordions',
	            'List of Accordions',
	            $this->Accordions(),
	            GridFieldConfig_RecordEditor::create()
	        ));

		return $fields;
	}

}