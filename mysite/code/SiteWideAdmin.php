<?php 
	
class SiteWideAdmin extends DataExtension {

    private static $db = array (
	    
	    // Call to Action
        'CallToAction' => 'Text',
        'CallToActionURL' => 'Text',
	    
	    // Footer
        'OurAddress' => 'HTMLText',
        'Phone' => 'Text',
        'Fax' => 'Text',
        'Email' => 'Text',
        'PostalAddress' => 'HTMLText'
    );

    public function updateCMSFields(FieldList $fields) {
	    
	    // Call to Action
	    $fields->addFieldsToTab("Root.SiteWideContent", new LiteralField('','<div class="admin-box">'));
	    	$fields->addFieldsToTab("Root.SiteWideContent", new HeaderField('Call to Action Content', '3', true ));
			$fields->addFieldsToTab('Root.SiteWideContent', TextField::create('CallToAction','Call to Action text'));
			$fields->addFieldsToTab('Root.SiteWideContent', TextField::create('CallToActionURL','Call to Action link'));
	    $fields->addFieldsToTab("Root.SiteWideContent", new LiteralField('','</div>')); 
	    
	    // Footer
	    $fields->addFieldsToTab("Root.SiteWideContent", new LiteralField('','<div class="admin-box">'));
	    	$fields->addFieldsToTab("Root.SiteWideContent", new HeaderField('Footer Content', '3', true ));
			$fields->addFieldsToTab('Root.SiteWideContent', TextAreaField::create('OurAddress','Physical Address', "", "3"));
			$fields->addFieldsToTab('Root.SiteWideContent', TextField::create('Phone','Phone Number'));
			$fields->addFieldsToTab('Root.SiteWideContent', TextField::create('Fax','Fax Number'));
			$fields->addFieldsToTab('Root.SiteWideContent', TextField::create('Email','Email Address'));
			$fields->addFieldsToTab('Root.SiteWideContent', TextAreaField::create('PostalAddress','Postal Address', "", "3"));
	    $fields->addFieldsToTab("Root.SiteWideContent", new LiteralField('','</div>'));       
	       
		return $fields;
        
    }
}