<?php

/**
 * Base page type
 */
class Page extends SiteTree {

	#region Declarations

	/**
	 * Additional fields which are available to all pages
	 * @var array
	 */
	private static $db = [
		'PreviewText' => 'Text'
	];

	#endregion Declarations

	#region Relationships

	/**
	 * One to one relations
	 * @var array
	 */
	private static $has_one = [];

	/**
	 * One to many relations
	 * @var array
	 */

	private static $extensions = [
		'ResponsiveImagesExtension'
	];

	#endregion Relationships

	#region Private Methods

	#endregion Private Methods

	#region Public Methods

	public function getCMSFields() {

		$this->beforeUpdateCMSFields(function (FieldList $fields) {
			//
		});

		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Metadata', TextareaField::create('PreviewText'));


		Requirements::customCSS(
			<<<CSS
			.htmleditor label.left {
    			width: 100%;
			}
CSS
		);

		return $fields;
	}

	/**
	 * Validation which is applied to all pages
	 * @return RequiredFields
	 */
	public function getCMSValidator() {
		return new RequiredFields(
			[]
		);
	}

	/**
	 * Set to return true if this page should not show it's children in the nav
	 *
	 * @return bool
	 */
	public function HideChildrenFromNavigation() {
		return false;
	}

	/**
	 * Set to return false if this page should not be added to as the first child of it's dropdown list if it is a parent
	 *
	 * @return bool
	 */
	public function ShowInDropdownIfParent() {
		return true;
	}

	/**
	 * Returns the site default meta tags
	 * This overload also checks if the domain contains one of our non-indexable domains
	 * If it does it adds the noindex meta tag.
	 *
	 * @param bool $includeTitle
	 *
	 * @return string
	 */
	public function MetaTags($includeTitle = true) {
		$tags          = parent::MetaTags($includeTitle);
		$domains       = Config::inst()->get('Development', 'NoIndexDomains');
		$currentDomain = strtolower(Director::protocolAndHost());
		if (is_array($domains) && !empty($domains)) {
			foreach ($domains as $nonIndexableDomain) {
				if (strpos($currentDomain, strtolower($nonIndexableDomain)) !== false) {
					return $tags . '<meta name="robots" content="noindex">';
				}
			}
		}

		return $tags;
	}

	#endregion Public Methods

}

/**
 * Base page controller
 */
class Page_Controller extends ContentController {

	#region Declarations

	private static $allowed_actions = [];

	#endregion Declarations

	#region Public Methods

	public function init() {
		parent::init();
		
		$stylesheets = array(
			"{$this->ThemeDir()}/css/bootstrap.css",
			"{$this->ThemeDir()}/css/_override.css",
			"{$this->ThemeDir()}/css/_faq.css",
			"{$this->ThemeDir()}/css/_footer.css",
			"{$this->ThemeDir()}/css/_gateways.css",
			"{$this->ThemeDir()}/css/_header.css",
			"{$this->ThemeDir()}/css/_media-queries.css",
			"{$this->ThemeDir()}/css/_products.css",
			"{$this->ThemeDir()}/css/_slider.css",
			"{$this->ThemeDir()}/css/_team.css",
			"{$this->ThemeDir()}/css/_typography.css",
			"{$this->ThemeDir()}/css/font-awesome.min.css",
		);
		Requirements::combine_files('style.css', $stylesheets);
		
		$scripts = array(
			"{$this->ThemeDir()}/js/jquery.min.js",
			"{$this->ThemeDir()}/js/webfont.js",
			"{$this->ThemeDir()}/js/custom_script.js",
			"{$this->ThemeDir()}/js/gmaps.js",
		);
		Requirements::combine_files('scripts.js', $scripts);
		Requirements::javascript("https://www.google.com/recaptcha/api.js");
		Requirements::javascript("https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyAO0d_eFCdzCBXNv_cEt9spUdKUHiBHYvo");
	}
	
	function CopyrightYear() { return date("Y"); }

}
