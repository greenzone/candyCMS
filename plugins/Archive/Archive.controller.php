<?php

/**
 * The archive plugin lists all blog entries by month and date.
 *
 * @link http://github.com/marcoraddatz/candyCMS
 * @author Marco Raddatz <http://marcoraddatz.com>
 * @license MIT
 * @since 1.5
 *
 */

namespace CandyCMS\Plugin\Controller;

use CandyCMS\Core\Helper\Helper as Helper;
use CandyCMS\Core\Helper\I18n as I18n;
use CandyCMS\Core\Helper\SmartySingleton as SmartySingleton;

final class Archive {

  /**
   * Identifier for Template Replacements
   */
  const IDENTIFIER = 'archive';

	/**
	 * Show the (cached) archive.
	 *
	 * We use a new Smarty instance to avoid parsing the Main.controller due to performance reasons.
	 *
	 * @static
	 * @access public
	 * @param array $aRequest
	 * @param array $aSession
	 * @return string HTML
	 *
	 */
  public final function show($aRequest, $aSession) {
    $sTemplateDir   = Helper::getPluginTemplateDir('archive', 'show');
    $sTemplateFile  = Helper::getTemplateType($sTemplateDir, 'show');

    $oSmarty = SmartySingleton::getInstance();
    $oSmarty->setTemplateDir($sTemplateDir);
    $oSmarty->setCaching(SmartySingleton::CACHING_LIFETIME_SAVED);

    $sCacheId = WEBSITE_MODE . '|blogs|' . WEBSITE_LOCALE . '|archive';
    if (!$oSmarty->isCached($sTemplateFile, $sCacheId)) {

      if (EXTENSION_CHECK && file_exists(PATH_STANDARD . '/app/ext/models/Blogs.model.php')) {
        require_once PATH_STANDARD . '/app/ext/models/Blogs.model.php';
        $oModel = & new \CandyCMS\Model\Blogs($aRequest, $aSession);
      }
      else {
        require_once PATH_STANDARD . '/vendor/candyCMS/models/Blogs.model.php';
        $oModel = & new \CandyCMS\Core\Model\Blogs($aRequest, $aSession);
      }

      foreach ($oModel->getData('', false, PLUGIN_ARCHIVE_LIMIT) as $aRow) {
        # Date format the month
        $sMonth = strftime('%m', $aRow['date_raw']);
        $sMonth = substr($sMonth, 0, 1) == 0 ? substr($sMonth, 1, 2) : $sMonth;
        $sMonth = I18n::get('global.months.' . $sMonth) . ' ' . strftime('%Y', $aRow['date_raw']);

        # Prepare array
        $iId = $aRow['id'];
        $aMonth[$sMonth][$iId] = $aRow;
      }

      $oSmarty->assign('data', $aMonth);
    }

    return $oSmarty->fetch($sTemplateFile, $sCacheId);
  }
}