# ss-homepage-slider
### Simple homepage slider module for SilverStripe sites


# Dependencies

* SilverStripe 3.1+
* Page class "HomePage"


# Features

* Allows you to add a slider to page with class "HomePage"
* Populate the slider with as many slides as you like. Each slide can have:
 * An image
 * Text (displayed as either dark or light)
 * An optional link, either to a page on the site or to an external url
* If `GridFieldSortableRows` is installed slides can be reordered using drag-n-drop
* Checkbox controls whether or not to include default css
* Checkbox turns automatic sliding on or off


# Installation

1. Sorry, not set up to include via composer yet. You'll have to copy and paste
2. Run /dev/build?flush=1
3. Edit your theme's `HomePage.ss` template and add `<% include HomePageSlider %>` where you want the slider to appear
4. Start adding slides to the HomePage!
