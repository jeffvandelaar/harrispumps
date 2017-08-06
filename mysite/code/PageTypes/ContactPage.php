<?php 
	
class ContactPage extends Page {
	
	private static $db = array (
       'HeaderLink' => 'Text',
	   'HeaderLinkURL' => 'Text',
	);

	private static $has_one = array(
		'HeaderImage' => 'Image',
	);

    public function getCMSFields() {
	
		$fields = parent::getCMSFields();
	        
		$fields->addFieldToTab('Root.PageHeader', SelectUploadField::create('HeaderImage', 'Header Image'));
		$fields->addFieldToTab('Root.PageHeader', TextField::create('HeaderLink', 'Header link text'));
		$fields->addFieldToTab('Root.PageHeader', TextField::create('HeaderLinkURL', 'Header link text URL'));
			
		return $fields;
	}
}

class ContactPage_Controller extends Page_Controller {
	
	public function ContactForm() {
	
		$record = DataObject::get_one("UserDefinedForm", "URLSegment = 'contact-form'");
		
		$results = new UserDefinedForm_Controller($record);
		
		return $results;
	}
	
}