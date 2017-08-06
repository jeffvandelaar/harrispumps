<?php

class Gateway extends DataObject {

    private static $db = array (
        'Title' => 'Varchar',
        'GatewayIntroText' => 'Text',
        'GatewayLinkURL' => 'Text'
    );

    private static $has_one = array (
		'HomePage' => 'HomePage',
		'GatewayPhoto' => 'Image'
    );
	
	private static $summary_fields = array (
        'GridThumbnail' => '',
        'Title' => 'Gateway Title'
    );

    public function getGridThumbnail() {
        if($this->GatewayPhoto()->exists()) {
            return $this->GatewayPhoto()->SetWidth(100);
        }
        return "(no image)";
    }

    public function getCMSFields() {
        $fields = FieldList::create(
            TextField::create('Title'),
            $image = SelectUploadField::create('GatewayPhoto'),
            TextField::create('GatewayIntroText'),
            TextField::create('GatewayLinkURL')
        );

		$image->setFolderName('Images');

        return $fields;
    }
}