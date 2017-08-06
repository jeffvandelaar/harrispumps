<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	'type' => 'MySQLDatabase',
	'server' => 'mysqlhost',
	'username' => 'harrispumps',
	'password' => 't31uF52/1R0|DRE',
	'database' => 'harrispumps',
	'path' => ''
);

// Set the site locale
i18n::set_locale('en_US');

Security::setDefaultAdmin('info@mrd.co.nz', 't31uF52/1R0|DRE');

FulltextSearchable::enable();

Director::set_environment_type("live");

define("GOOGLE_MAP_KEY", "AIzaSyAO0d_eFCdzCBXNv_cEt9spUdKUHiBHYvo");

DataObject::add_extension('SiteConfig', 'SiteWideAdmin');
LeftAndMain::require_themed_css('custom');
LeftAndMain::require_css('themes/harrispumps/css/admin-custom.css');

BlogPost::add_extension('BlogPostExtension');
Blog::add_extension('BlogExtension');