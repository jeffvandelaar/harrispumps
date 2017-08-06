<?php

class BlogExtension extends SiteTreeExtension {
	
    private static $db = array(
        'HeaderLink' => 'Text',
	    'HeaderLinkURL' => 'Text',
    );

	private static $has_one = array(
		'HeaderImage' => 'Image',
	);
	
    public function updateCmsFields(FieldList $fields) {
	        
		$fields->addFieldToTab('Root.PageHeader', SelectUploadField::create('HeaderImage', 'Header Image'));
		$fields->addFieldToTab('Root.PageHeader', TextField::create('HeaderLink', 'Header link text'));
		$fields->addFieldToTab('Root.PageHeader', TextField::create('HeaderLinkURL', 'Header link text URL'));
			
		return $fields;
    }
	
}