<?php

class TeamMember extends DataObject {

    private static $db = array (
        'Title' => 'Varchar',
        'Position' => 'Varchar',
        'Bio' => 'HTMLText'
    );

    private static $has_one = array (
		'TeamPage' => 'TeamPage',
		'TeamMemberPhoto' => 'Image'
    );
	
	private static $summary_fields = array (
        'GridThumbnail' => '',
        'Title' => 'Team Member Title'
    );

    public function getGridThumbnail() {
        if($this->TeamMemberPhoto()->exists()) {
            return $this->TeamMemberPhoto()->SetWidth(100);
        }
        return "(no image)";
    }

    public function getCMSFields() {
        $fields = FieldList::create(
            TextField::create('Title'),
            TextField::create('Position'),
            $image = SelectUploadField::create('TeamMemberPhoto'),
            HTMLEditorField::create('Bio')
        );

		$image->setFolderName('Images');

        return $fields;
    }
}