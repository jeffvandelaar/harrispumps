<?php

class HomePage extends Page {
	
	private static $db = array (
		
		'MapType'       => "Enum('roadmap,satellite,hybrid,terrain','roadmap')",
        'Latitude'      => 'Varchar',
        'Longitude'     => 'Varchar',
        'MapZoom'       => "Enum('0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17', '15')",
        'MarkerTitle'   => 'Varchar',
        'MarkerContent' => 'HTMLText',
        
	);
	
	private static $has_many = array (
        'Gateways' => 'Gateway',
    );
	
	public function getCMSFields() {
		
		$this->beforeUpdateCMSFields(function (FieldList $fields) {
            $mapTypes = [];
            foreach (singleton(__CLASS__)->dbObject('MapType')->enumValues() as $type) {
                $mapTypes[$type] = ucwords($type);
            }

            $fields->addFieldsToTab('Root.Map', [
                new TextField('Latitude'),
                new TextField('Longitude'),
                new DropdownField('MapZoom', null, singleton(__CLASS__)->dbObject('MapZoom')->enumValues()),
                new TextField('MarkerTitle'),
                new DropdownField('MapType', null, $mapTypes),
                (new HTMLEditorField('MarkerContent'))->setRows(15),
            ]);

        });
	
		$fields = parent::getCMSFields();
		
			$fields->addFieldToTab('Root.Main', GridField::create(
	            'Gateways',
	            'List of Gateways',
	            $this->Gateways(),
	            GridFieldConfig_RecordEditor::create()
	        ));
			
		return $fields;
	}

}

class HomePage_Controller extends StandardInnerPage_Controller {

}
