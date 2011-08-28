<?php

/**
 * CRUD actions of logs.
 *
 * @link http://github.com/marcoraddatz/candyCMS
 * @author Marco Raddatz <http://marcoraddatz.com>
 * @license MIT
 * @since 2.0
 */

require_once 'app/models/Log.model.php';
require_once 'app/helpers/Page.helper.php';

class Log extends Main {

	/**
	 * Include the log model.
	 *
	 * @access public
	 * @override app/controllers/Main.controller.php
	 *
	 */
	public function __init() {
		$this->_oModel = new Model_Log($this->_aRequest, $this->_aSession);
	}

	/**
	 * Show log overview if we have admin rights.
	 *
	 * @access public
	 * @return string HTML content
	 *
	 */
	public function show() {
		if (USER_RIGHT < 4)
			return Helper::errorMessage(LANG_ERROR_GLOBAL_NO_PERMISSION, '/');

		else {
			$this->_oSmarty->assign('logs', $this->_oModel->getData());

      # Do we need pages?
      $this->_oSmarty->assign('_pages_', $this->_oModel->oPage->showPages('/log'));

			# Language
			$this->_oSmarty->assign('lang_destroy', LANG_GLOBAL_DESTROY);
			$this->_oSmarty->assign('lang_headline', LANG_GLOBAL_LOGS);

			$this->_oSmarty->template_dir = Helper::getTemplateDir('logs', 'show');
			return $this->_oSmarty->fetch('show.tpl');
		}
	}

	/**
	 * Show content entry or content overview (depends on a given ID or not).
	 *
	 * @access public
	 * @param string $sSectionName name of section
	 * @param string $sActionName name of action (CRUD)
	 * @param int $iActionId ID of the row that is affected
	 * @param int $iUserId ID of the acting user
	 * @param int $iTimeStart starting timestamp of the entry
	 * @param int $iTimeEnd ending timestamp of the entry
	 * @return string HTML content
	 * @todo integer or int?
	 *
	 */
	public static function insert($sSectionName, $sActionName, $iActionId = 0, $iUserId = USER_ID, $iTimeStart = '', $iTimeEnd = '') {
		Model_Log::insert($sSectionName, $sActionName, $iActionId, $iUserId, $iTimeStart, $iTimeEnd);
	}

	/**
	 * Delete entry if we have enough rights.
	 *
	 * @access public
	 * @return ?
	 * @todo what return?
	 * @override app/controllers/Main.controller.php
	 *
	 */
	public function destroy() {
		return (USER_RIGHT < 4) ? Helper::errorMessage(LANG_ERROR_GLOBAL_NO_PERMISSION, '/') : $this->_destroy();
	}

	/**
	 * Activate model, delete data from database and redirect afterwards.
	 *
	 * @access protected
	 * @return boolean
	 * @todo what return?
	 *
	 */
	protected function _destroy() {
		if ($this->_oModel->destroy($this->_iId) === true) {
			Log::insert($this->_aRequest['section'], $this->_aRequest['action'], $this->_iId);
			return Helper::successMessage(LANG_SUCCESS_DESTROY, '/log');
		}
		else {
			unset($this->_iId);
			return Helper::errorMessage(LANG_ERROR_SQL_QUERY, '/log');
		}
	}
}