<?php

class CustomMenu extends Extension {

    /**
     * Define constructor otherwise PHP will fall back to calling the function
     * named after the class which throws an error on inital setup
     */
    function __construct() {
        parent::__construct();
    }

    /**
     * Generate an list of items that will be loaded into the custom menu
     *
     * @param $menu template slug for retriving a menu
     * @return ArrayList
     */
    public function CustomMenu($menu = "") {
        $menu_items = new ArrayList();

        if(isset($menu)) {
            // Ensure argument is safe for database
            $menu = Convert::raw2sql($menu);

            $filter = array(
                'Slug' => $menu
            );

            if($menu = CustomMenuHolder::get()->filter($filter)->first()) {

                // If a custom order is set, use it
                if($menu->Order)
                    $order = explode(',', $menu->Order);

                if(isset($order) && is_array($order) && count($order) > 0) {
                    foreach($order as $item) {
                        $page = $menu->Pages()->find('ID', $item);
                        if($page) {
                            $menu_items->push($page);
                        }
                    }
                } else {
                    foreach($menu->Pages() as $item) {
                        if($item) {
                            $menu_items->push($item);
                        }
                    }
                }
            }
        }


        return $menu_items;
    }

    /**
     * Take a list of custom menu items and render it into a template.
     *
     * @param $menu Template slug generated by the CMS
     * @return string
     */
    public function RenderedCustomMenu($menu = "") {
        $vars = array(
            'Slug' => $menu,
            'Menu' => $this->owner->CustomMenu($menu)
        );

        return $this->owner->renderWith('CustomMenu', $vars);
    }
}