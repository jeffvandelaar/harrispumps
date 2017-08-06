<?php

class ResponsiveImagesExtension extends SiteTreeExtension {

	#region Declarations

	/**
	 * Width at which point breakpoints trigger
	 * @var array
	 */
	private $bootstrapBreakpoints = [
		'xs' => 0,
		'sm' => 768,
		'md' => 992,
		'lg' => 1200
	];

	/**
	 * Container width at given breakpoints
	 * @var array
	 */
	private $bootstrapWidths = [
		'xs' => 768,
		'sm' => 750,
		'md' => 970,
		'lg' => 1170
	];

	#endregion Declarations

	#region Private Methods

	/**
	 * Calculate the display width of a given number of columns at a given breakpoint
	 *
	 * @param  string $size    XS, SM, MD, or LG
	 * @param  int    $columns Between 1 and 12
	 *
	 * @return float
	 */
	private function CalculateBootstrapImageWidth($size, $columns) {

		$width    = $this->bootstrapWidths[$size];
		$colWidth = $width / 12;

		return round($colWidth * $columns);
	}

	/**
	 * Calculates the percentage width of a given number of columns
	 *
	 * @param  int $columns Between 1 and 12
	 *
	 * @return float
	 */
	private function CalculateBootstrapImageWidthPercent($columns) {

		return round($columns / 12 * 100, 2);
	}

	/**
	 * Resizes an image to provided dimensions
	 *
	 * The image is saved during the process
	 *
	 * @param Image|int $image
	 * @param           int ? $width
	 * @param           int ? $height
	 *
	 * @return DataObject|null
	 */
	private function ResizeImage($image, $width = null, $height = null) {

		if (is_numeric($image)) {
			$image = Image::get()->byID($image);
		}

		if (is_null($image)) {
			return null;
		}

		$currentWidth  = $image->getWidth();
		$currentHeight = $image->getHeight();

		$width  = ($width > $currentWidth ? $currentWidth : $width);
		$height = ($height > $currentHeight ? $currentHeight : $height);

		if (!is_null($width) && !is_null($height)) {
			$image = $image->SetRatioSize($width, $height);
		} elseif (is_null($width) && !is_null($height)) {
			$image = $image->SetHeight($height);
		} elseif (is_null($height) && !is_null($width)) {
			$image = $image->SetWidth($width);
		}

		return $image;
	}

	#endregion Private Methods

	#region Public Methods

	/**
	 * Returns an img tag to display the image at specified dimensions
	 *
	 * The srcset attribute is used to provide a double resolution image to supported browsers.
	 * If $alt is not provided the image title will be used instead.
	 *
	 * @param mixed $image Either an Image object or the ID of an image
	 * @param       int    ? $width Required image width
	 * @param       int    ? $height Required image height
	 * @param       string ? $alt Alt text for the image
	 *
	 * @return string
	 */
	public function RenderRetinaImage($image, $width = null, $height = null, $alt = null) {
		if (is_numeric($image)) {
			$image = Image::get()->byID($image);
		}

		if (is_null($alt)) {
			$alt = $image->Title;
		}

		if (!is_numeric($width) || $width < 1) $width = null;
		if (!is_numeric($height) || $height < 1) $height = null;

		$image1x = $this->ResizeImage($image, $width, $height);

		if (is_null($image1x)) {
			return null;
		}

		$width2x  = ($width > 0) ? $width * 2 : null;
		$height2x = ($height > 0) ? $height * 2 : null;

		$image2x = $this->ResizeImage($image, $width2x, $height2x);

		// Create the srcset
		$srcset = $image1x->URL . ' 1x, ' .
		          $image2x->URL . ' 2x';

		// Add the base image
		$tag = sprintf('<img class="img-responsive" src="%s" srcset="%s" alt="%s" item-prop="image">',
			$image1x->URL,
			$srcset,
			$alt);

		return $tag;
	}

	/**
	 * Renders an image at default bootstrap column sizes using srcset
	 *
	 * At this time the picturefill library is required
	 * https://github.com/scottjehl/picturefill
	 *
	 * @param mixed $image Image or ImageID
	 * @param       int    ? $colXS Number of columns to span at XS
	 * @param       int    ? $colSM Number of columns to span at SM
	 * @param       int    ? $colMD Number of columns to span at MD
	 * @param       int    ? $colLG Number of columns to span at LG
	 * @param       string ? $alt
	 *
	 * @return string
	 */
	public function RenderBootstrapImage($image, $colXS = null, $colSM = null, $colMD = null, $colLG = null,  $alt = null) {
		if (is_numeric($image)) {
			$image = Image::get()->byID($image);
		}

		if(!$image){
			return null;
		}

		if (is_null($alt)) {
			$alt = ($image->AltText ?: $image->Title);
		}

		$colXS = isset($colXS) ? $colXS : 12;
		$colSM = isset($colSM) ? $colSM : $colXS;
		$colMD = isset($colMD) ? $colMD : $colSM;
		$colLG = isset($colLG) ? $colLG : $colMD;

		// Sizes to display the image at
		$sizes = array(
			'(min-width: ' . $this->bootstrapBreakpoints['lg'] . 'px) ' . $this->CalculateBootstrapImageWidthPercent($colLG) . 'vw',
			'(min-width: ' . $this->bootstrapBreakpoints['md'] . 'px) ' . $this->CalculateBootstrapImageWidthPercent($colMD) . 'vw',
			'(min-width: ' . $this->bootstrapBreakpoints['sm'] . 'px) ' . $this->CalculateBootstrapImageWidthPercent($colSM) . 'vw',
			$this->CalculateBootstrapImageWidthPercent($colXS) . 'vw'
		);

		// Image Sizes
		$srcset = array();

		// LG
		$width    = $this->CalculateBootstrapImageWidth('lg', $colLG);
		/** @var Image $resized */
		$resized = $this->ResizeImage($image, $width * 2);
		$srcset[] = $resized->URL . ' ' . $resized->getWidth() . 'w';
		/** @var Image $resized */
		$resized = $this->ResizeImage($image, $width);
		$srcset[] = $resized->URL . ' ' . $resized->getWidth() . 'w';

		// MD
		$width    = $this->CalculateBootstrapImageWidth('md', $colMD);
		/** @var Image $resized */
		$resized = $this->ResizeImage($image, $width * 2);
		$srcset[] = $resized->URL . ' ' . $resized->getWidth() . 'w';
		/** @var Image $resized */
		$resized = $this->ResizeImage($image, $width);
		$srcset[] = $resized->URL . ' ' . $resized->getWidth() . 'w';

		// SM
		$width    = $this->CalculateBootstrapImageWidth('sm', $colSM);
		/** @var Image $resized */
		$resized = $this->ResizeImage($image, $width * 2);
		$srcset[] = $resized->URL . ' ' . $resized->getWidth() . 'w';
		/** @var Image $resized */
		$resized = $this->ResizeImage($image, $width);
		$srcset[] = $resized->URL . ' ' . $resized->getWidth() . 'w';

		// XS
		$width    = $this->CalculateBootstrapImageWidth('xs', $colXS);
		/** @var Image $resized */
		$resized = $this->ResizeImage($image, $width * 2);
		$srcset[] = $resized->URL . ' ' . $resized->getWidth() . 'w';

		/** @var Image $resized */
		$resized = $this->ResizeImage($image, $width);

		return sprintf('<img class="img-responsive" src="%s" alt="%s" title="%s" sizes="%s" srcset="%s" itemprop="image">',
			$resized->URL,
			$alt,
			$image->Title,
			implode(',', $sizes),
			implode(',', $srcset)
		);
	}

	#endregion Public Methods
}