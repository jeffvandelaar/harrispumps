<?php

class TeamPage extends Page {
	
	private static $db = array (
       'HeaderLink' => 'Text',
	   'HeaderLinkURL' => 'Text',
	);

	private static $has_one = array(
		'HeaderImage' => 'Image',
	);
	
	private static $has_many = array (
        'TeamMembers' => 'TeamMember',
    );
	
	public function getCMSFields() {
	
		$fields = parent::getCMSFields();
		
			$fields->addFieldToTab('Root.Main', GridField::create(
	            'TeamMembers',
	            'List of Team Members',
	            $this->TeamMembers(),
	            GridFieldConfig_RecordEditor::create()
	        ));
	        
		$fields->addFieldToTab('Root.PageHeader', SelectUploadField::create('HeaderImage', 'Header Image'));
		$fields->addFieldToTab('Root.PageHeader', TextField::create('HeaderLink', 'Header link text'));
		$fields->addFieldToTab('Root.PageHeader', TextField::create('HeaderLinkURL', 'Header link text URL'));
			
		return $fields;
	}

}

class TeamPage_Controller extends StandardInnerPage_Controller {

}
