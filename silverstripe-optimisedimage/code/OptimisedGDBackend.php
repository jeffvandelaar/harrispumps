<?php

/**
 * Class OptimisedGDBackend
 */
class OptimisedGDBackend extends GDBackend
{
    /**
     * @var ImageOptimiserService
     */
    protected $optimiserService;
    /**
     * @param ImageOptimiserService $optimiserService
     */
    public function setOptimiserService(ImageOptimiserService $optimiserService)
    {
        $this->optimiserService = $optimiserService;
    }
    /**
     * Calls the original writeTo function and then after that completes optimises the image
     * @param string $filename
     */
    public function writeTo($filename)
    {
        parent::writeTo($filename);
        
        if ($this->optimiserService instanceof ImageOptimiserInterface) {
            $this->optimiserService->optimiseImage($filename);
        }
    }
}
