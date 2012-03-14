<?php

/**
 * System tests.
 *
 * @link http://github.com/marcoraddatz/candyCMS
 * @author Marco Raddatz <http://marcoraddatz.com>
 * @version 2.0
 * @since 2.0
 *
 */

define('PATH_STANDARD', dirname(__FILE__) . '/..');

require_once PATH_STANDARD . '/tests/simpletest/autorun.php';
require_once PATH_STANDARD . '/tests/simpletest/web_tester.php';

require_once PATH_STANDARD . '/tests/candy/Candy.unit.php';
require_once PATH_STANDARD . '/tests/candy/Candy.web.php';

require_once PATH_STANDARD . '/config/Candy.inc.php';

require_once PATH_STANDARD . '/app/helpers/I18n.helper.php';

define('CLEAR_CACHE', true);
define('CURRENT_URL', 'http://localhost/');
define('MOBILE', false);
define('MOBILE_DEVICE', false);
define('UNIQUE_ID', 'tests');
define('VERSION', '0');

class AllFileTests extends TestSuite {

	function __construct() {
		parent::__construct();
		$this->TestSuite('All tests');

    # Helpers
    $this->addFile(PATH_STANDARD . '/tests/tests/app/helpers/SmartySingleton.helper.php');
    $this->addFile(PATH_STANDARD . '/tests/tests/app/helpers/Helper.helper.php');
    $this->addFile(PATH_STANDARD . '/tests/tests/app/helpers/I18n.helper.php');
    $this->addFile(PATH_STANDARD . '/tests/tests/app/helpers/Image.helper.php');

		# Index
		$this->addFile(PATH_STANDARD . '/tests/tests/app/controllers/Index.controller.php');

    # Blog
    $this->addFile(PATH_STANDARD . '/tests/tests/app/models/Blogs.model.php');
    $this->addFile(PATH_STANDARD . '/tests/tests/app/controllers/Blogs.controller.php');

    # Calendar

    # Comment
    $this->addFile(PATH_STANDARD . '/tests/tests/app/models/Comments.model.php');
    $this->addFile(PATH_STANDARD . '/tests/tests/app/controllers/Comments.controller.php');

    # Content
    $this->addFile(PATH_STANDARD . '/tests/tests/app/models/Contents.model.php');
    $this->addFile(PATH_STANDARD . '/tests/tests/app/controllers/Contents.controller.php');

		# Download
//		$this->addFile(PATH_STANDARD . '/tests/tests/app/models/Download.model.php');
//		$this->addFile(PATH_STANDARD . '/tests/tests/app/controllers/Download.controller.php');

		# Error
		$this->addFile(PATH_STANDARD . '/tests/tests/app/controllers/Errors.controller.php');

		# Gallery
//    $this->addFile(PATH_STANDARD . '/tests/tests/app/models/Gallery.model.php');
//		$this->addFile(PATH_STANDARD . '/tests/tests/app/controllers/Gallery.controller.php');

    # Log
//    $this->addFile(PATH_STANDARD . '/tests/tests/app/models/Log.model.php');
//		$this->addFile(PATH_STANDARD . '/tests/tests/app/controllers/Log.controller.php');

    # Mail
//		$this->addFile(PATH_STANDARD . '/tests/tests/app/controllers/Mail.controller.php');

    # Media
//		$this->addFile(PATH_STANDARD . '/tests/tests/app/controllers/Media.controller.php');

    # Newsletter
//		$this->addFile(PATH_STANDARD . '/tests/tests/app/controllers/Newsletter.controller.php');

    # RSS
		$this->addFile(PATH_STANDARD . '/tests/tests/app/controllers/Rss.controller.php');

		# Search
		$this->addFile(PATH_STANDARD . '/tests/tests/app/models/Searches.model.php');
		$this->addFile(PATH_STANDARD . '/tests/tests/app/controllers/Searches.controller.php');

    # Session

    # Sitemap
		$this->addFile(PATH_STANDARD . '/tests/tests/app/controllers/Sitemaps.controller.php');

    # User
	}
}

?>