<?php

class SearchPage extends Page {

    function requireDefaultRecords() {
        if (!SiteTree::get_by_link('Search')) {
            $homepage             = class_exists('SearchPage') ? new SearchPage() : new Page();
            $homepage->Title      = _t('SiteTree.DEFAULTSEARCHTITLE', 'Search');
            $homepage->Content    = _t('SiteTree.DEFAULTSEARCHCONTENT', '');
            $homepage->URLSegment = 'Search';
            $homepage->Status     = 'Published';
            $homepage->Sort       = 1;
            $homepage->write();
            $homepage->publish('Stage', 'Live');
            $homepage->flushCache();
            DB::alteration_message('Search page created', 'created');
        }
    }
    
	private static $db = array (
       'HeaderLink' => 'Text',
	   'HeaderLinkURL' => 'Text',
	);

	private static $has_one = array(
		'HeaderImage' => 'Image',
	);

    private static $defaults = [
      'ShowInMenus' => false,
      'ShowInSearch' => false
    ];

    public function canView($member = null) {
        return Permission::check('CMS_ACCESS_CMSMain', 'any', $member);
    }

    public function canEdit($member = null) {
        return true;
    }

    public function canDelete($member = null) {
        return false;
    }

    public function canCreate($member = null) {
        return false;
    }
    
    public function getCMSFields(){

		$fields = parent::getCMSFields();
		
		$fields->addFieldToTab('Root.PageHeader', SelectUploadField::create('HeaderImage', 'Header Image'));
		$fields->addFieldToTab('Root.PageHeader', TextField::create('HeaderLink', 'Header link text'));
		$fields->addFieldToTab('Root.PageHeader', TextField::create('HeaderLinkURL', 'Header link text URL'));

		return $fields;
	}
}

class SearchPage_Controller extends Page_Controller {

}
