<?php

/*
 * @link http://github.com/marcoraddatz/candyCMS
 * @author Marco Raddatz <http://marcoraddatz.com>
 */

class Model_Log extends Model_Main {

	private function _setData() {
    # Count entries
    try {
      $oQuery = $this->_oDb->query("SELECT COUNT(*) FROM " . SQL_PREFIX . "logs");
      $iResult = $oQuery->fetchColumn();
    }
    catch (AdvancedException $e) {
      $this->_oDb->rollBack();
    }

    $this->oPage = new Page($this->_aRequest, $iResult, 50);

		try {
			$oQuery = $this->_oDb->prepare("SELECT
                                        l.*,
                                        u.id AS uid,
                                        u.name,
                                        u.surname
                                      FROM
                                        " . SQL_PREFIX . "logs l
                                      LEFT JOIN
                                        " . SQL_PREFIX . "users u
                                      ON
                                        l.user_id=u.id
                                      ORDER BY
                                        l.time_end DESC
                                      LIMIT
                                          :offset,
                                          :limit");

      $oQuery->bindParam('limit', $this->oPage->getLimit(), PDO::PARAM_INT);
      $oQuery->bindParam('offset', $this->oPage->getOffset(), PDO::PARAM_INT);
      $oQuery->execute();

			$aResult = $oQuery->fetchAll(PDO::FETCH_ASSOC);
		}
		catch (AdvancedException $e) {
			$this->_oDb->rollBack();
		}

		foreach ($aResult as $aRow) {
			$iId = $aRow['id'];

			# Set SEO friendly user names
			$sName      = Helper::formatOutput($aRow['name']);
			$sSurname   = Helper::formatOutput($aRow['surname']);
			$sFullName  = $sName . ' ' . $sSurname;

			$this->_aData[$iId] = array(
							'id'                => $aRow['id'],
							'uid'               => $aRow['uid'],
							'section_name'      => $aRow['section_name'],
							'action_name'       => $aRow['action_name'],
							'action_id'					=> $aRow['action_id'],
							'user_id'						=> $aRow['user_id'],
							'full_name'         => $sFullName,
							'name'              => $sName,
							'surname'           => $sSurname,
							'time_start'        => Helper::formatTimestamp($aRow['time_start']),
							'time_end'	        => Helper::formatTimestamp($aRow['time_end'])
			);
		}

    return $this->_aData;
	}

	public function getData() {
		return $this->_setData();
	}

	public static function insert($sSectionName, $sActionName, $iActionId, $iUserId, $iTimeStart, $iTimeEnd) {
		$iTimeStart = empty($iTimeStart) ? time() : $iTimeStart;
		$iTimeEnd   = empty($iTimeEnd) ? time() : $iTimeEnd;

		try {
			$oDb = new PDO('mysql:host=' . SQL_HOST . ';dbname=' . SQL_DB, SQL_USER, SQL_PASSWORD);
			$oDb->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

      $oQuery = $oDb->prepare(" INSERT INTO
                                  " . SQL_PREFIX . "logs
                                  ( section_name,
                                    action_name,
                                    action_id,
                                    time_start,
                                    time_end,
                                    user_id)
                                VALUES
                                  ( :section_name,
                                    :action_name,
                                    :action_id,
                                    :time_start,
                                    :time_end,
                                    :user_id)");

			$oQuery->bindParam('section_name', strtolower($sSectionName));
			$oQuery->bindParam('action_name', strtolower($sActionName));
			$oQuery->bindParam('action_id', $iActionId, PDO::PARAM_INT);
			$oQuery->bindParam('time_start', $iTimeStart);
			$oQuery->bindParam('time_end', $iTimeEnd);
			$oQuery->bindParam('user_id', $iUserId);

			$bResult = $oQuery->execute();
			$oDb = null;

			return $bResult;
		}
		catch (AdvancedException $e) {
			$oDb->rollBack();
		}
	}

	public function destroy($iId) {
    try {
      $oQuery = $this->_oDb->prepare("DELETE FROM
																				" . SQL_PREFIX . "logs
																			WHERE
																				id = :id
																			LIMIT
																				1");

      $oQuery->bindParam('id', $iId);

      return $oQuery->execute();
    }
    catch (AdvancedException $e) {
      $this->_oDb->rollBack();
    }
  }
}