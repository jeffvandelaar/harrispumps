<?php

class AccordionContentBlock extends ContentBlock {

	protected static $singular_name = 'Full Width Accordion';
	protected static $plural_name   = 'Full Width Accordion Blocks';

	private static $db = [
		'Content' => 'HTMLText',
		'SortOrder' => 'Int'
	];
	
	private static $has_many = array (
        'Accordions' => 'Accordion',
    );
    
	private static $default_sort = 'SortOrder';

	public function getCMSFields() {

		$this->beforeUpdateCMSFields(function (FieldList $fields) {
			$ContentBlocksConfig = GridFieldConfig_RecordEditor::create();
			$ContentBlocksConfig->addComponent(new GridFieldOrderableRows('SortOrder'));
			$fields->addFieldsToTab('Root.Main', [
				HtmlEditorField::create('Content'),
			]);
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