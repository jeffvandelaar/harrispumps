<?php

class Accordion extends DataObject {

    private static $db = array (
        'Title' => 'Varchar',
        'AccordionText' => 'Text'
    );

    private static $has_one = array (
		'AccordionContentBlock' => 'AccordionContentBlock',
		'AccordionAndImageContentBlock' => 'AccordionAndImageContentBlock'
    );
	
	private static $summary_fields = array (
        'Title' => 'Accordion Title'
    );

    public function getCMSFields() {
        $fields = FieldList::create(
            TextField::create('Title'),
            TextField::create('AccordionText')
        );

        return $fields;
    }
}