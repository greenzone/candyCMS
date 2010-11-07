<?php

/*
 * This software is licensed under GPL <http://www.gnu.org/licenses/gpl.html>.
 *
 * @link http://github.com/marcoraddatz/candyCMS
 * @author Marco Raddatz <http://marcoraddatz.com>
 */

class Model_Comment extends Model_Main {

  private $_iEntries;

  public function __init($iEntries, $iOffset, $iLimit) {
    $this->_iEntries	= & $iEntries;
    $this->_iOffset		= & $iOffset;
    $this->_iLimit		= & $iLimit;
  }

  private final function _setData($parentId, $parentCategory) {
    if ($this->_iEntries > 0) {
      try {
        $oDb = new PDO('mysql:host=' . SQL_HOST . ';dbname=' . SQL_DB, SQL_USER, SQL_PASSWORD);
        $oDb->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $oQuery = $oDb->prepare("	SELECT
                                    c.*,
                                    u.name,
                                    u.surname,
                                    u.id AS user_id,
                                    u.use_gravatar,
                                    u.email
                                  FROM
                                    comments c
                                  LEFT JOIN
                                    users u
                                  ON
                                    u.id=c.author_id
                                  WHERE
                                    c.parent_id = :parent_id
                                  AND
                                    c.parent_category = :parent_category
                                  ORDER BY
                                    c.date ASC,
                                    c.id ASC
                                  LIMIT
                                    :offset,
                                    :limit");

        $oQuery->bindParam('parent_id', $parentId);
        $oQuery->bindParam('parent_category', $parentCategory);
        $oQuery->bindParam('offset', $this->_iOffset, PDO::PARAM_INT);
        $oQuery->bindParam('limit', $this->_iLimit, PDO::PARAM_INT);
        $oQuery->execute();

        $aResult = $oQuery->fetchAll(PDO::FETCH_ASSOC);

      } catch (AdvancedException $e) {
        $oDb->rollBack();
      }

      $iLoop = 1;
      foreach ($aResult as $aRow) {
        $iId = $aRow['id'];

        if(isset($aRow['user_id']))
          $aGravatar = array('use_gravatar' => $aRow['use_gravatar'], 'email' => $aRow['email']);
        else
          $aGravatar = array('use_gravatar' => 1, 'email' => $aRow['author_email']);

        # Set SEO friendly user names
        $sName      = Helper::formatOutput($aRow['name']);
        $sSurname   = Helper::formatOutput($aRow['surname']);
        $sFullName  = $sName . ' ' . $sSurname;

        $this->_aData[$iId] =
                array(
                    'id'							    => $aRow['id'],
                    'user_id'					    => $aRow['user_id'],
                    'parent_id'				    => $aRow['parent_id'],
                    'parent_category'			=> $aRow['parent_category'],
                    'author_id'						=> $aRow['author_id'],
                    'author_facebook_id'	=> $aRow['author_facebook_id'],
                    'author_ip'						=> $aRow['author_ip'],
                    'author_email'			  => $aRow['author_email'],
                    'author_name'					=> $aRow['author_name'],
                    'name'								=> Helper::formatOutput($aRow['name']),
                    'surname'							=> Helper::formatOutput($aRow['surname']),
                    'full_name'						=> $sFullName,
                    'full_name_seo'				=> urlencode($sFullName),
                    'avatar_32'						=> Helper::getAvatar('user', 32, $aRow['author_id'], $aGravatar),
                    'avatar_64'						=> Helper::getAvatar('user', 64, $aRow['author_id'], $aGravatar),
                    'date'								=> Helper::formatTimestamp($aRow['date'], true),
                    'datetime'						=> Helper::formatTimestamp($aRow['date']),
                    'content'							=> Helper::formatOutput($aRow['content']),
                    'loop'								=> $iLoop
        );

        $iLoop++;
      }

			# We crawl the facebook avatars
			# TODO: Put into seperate method
			if (class_exists('FacebookCMS')) {
				$oFacebook = new FacebookCMS(array(
										'appId' => FACEBOOK_APP_ID,
										'secret' => FACEBOOK_SECRET,
								));

				# We go through our data and get all facebook posts
				$sFacebookUids = '';
				foreach ($aResult as $aRow) {

					# Skip unnecessary data
					if (empty($aRow['author_facebook_id']))
						continue;

					else
						$sFacebookUids .= $aRow['author_facebook_id'] . ',';
				}

				# Create a new facebook array with avatar urls
				$aFacebookAvatarCache = array();
				$aFacebookAvatars = $oFacebook->getUserAvatar($sFacebookUids);

				foreach($aFacebookAvatars as $aFacebookAvatar) {
					$iUid = $aFacebookAvatar['uid'];
					$aFacebookAvatarCache[$iUid]['pic_square_with_logo'] = $aFacebookAvatar['pic_square_with_logo'];
					$aFacebookAvatarCache[$iUid]['profile_url'] = $aFacebookAvatar['profile_url'];
				}

				# Finally, we need to rebuild avatar data in main data array
				foreach ($aResult as $aRow) {

					# Skip unnecessary data
					if (empty($aRow['author_facebook_id']))
						continue;

					else {
						$iId = $aRow['id'];
						$iAuthorFacebookId = $aRow['author_facebook_id'];
						$this->_aData[$iId]['avatar_64'] = $aFacebookAvatarCache[$iAuthorFacebookId]['pic_square_with_logo'];
						$this->_aData[$iId]['author_website'] = $aFacebookAvatarCache[$iAuthorFacebookId]['profile_url'];
					}
				}
			}

      return $this->_aData;
    }
  }

  public final function getData($iParentId, $sParentCategory) {
    return $this->_setData($iParentId, $sParentCategory);
  }

  public final function countData($iParentId, $sParentCategory = 'b') {
    try {
      $oDb = new PDO('mysql:host=' . SQL_HOST . ';dbname=' . SQL_DB, SQL_USER, SQL_PASSWORD);
      $oDb->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

      $oQuery = $oDb->prepare(" SELECT
                                  COUNT(*)
                                FROM
                                  comments
                                WHERE
                                  parent_id = :parent_id
                                AND
                                  parent_category = :parent_category");

      $oQuery->bindParam('parent_id', $iParentId);
      $oQuery->bindParam('parent_category', $sParentCategory);

      $iResult = $oQuery->fetchColumn();
    }
    catch (AdvancedException $e) {
      $oDb->rollBack();
    }

    return (int) $iResult;
  }

  public function create() {
    $sAuthorName = isset($this->_aRequest['name']) ?
            Helper::formatInput($this->_aRequest['name']) :
            '';

    $sAuthorEmail = isset($this->_aRequest['email']) ?
            Helper::formatInput($this->_aRequest['email']) :
            USER_EMAIL;

    $iFacebookId = isset($this->_aRequest['facebook_id']) ?
            Helper::formatInput($this->_aRequest['facebook_id']) :
            '';

    try {
      $oDb = new PDO('mysql:host=' . SQL_HOST . ';dbname=' . SQL_DB, SQL_USER, SQL_PASSWORD);
      $oDb->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

      $oQuery = $oDb->prepare(" INSERT INTO
                                  comments (author_id, author_facebook_id, author_name, author_email, author_ip, content, date, parent_category, parent_id)
                                VALUES
                                  ( :author_id, :author_facebook_id, :author_name, :author_email, :author_ip, :content, :date, :parent_category, :parent_id )");

      $iUserId = USER_ID;
      $oQuery->bindParam('author_id', $iUserId);
      $oQuery->bindParam('author_facebook_id', $iFacebookId);
      $oQuery->bindParam('author_name', $sAuthorName);
      $oQuery->bindParam('author_email', $sAuthorEmail);
      $oQuery->bindParam('author_ip', $_SERVER['REMOTE_ADDR']);
      $oQuery->bindParam('content', Helper::formatInput($this->_aRequest['content']));
      $oQuery->bindParam('date', time());
      $oQuery->bindParam('parent_category', $this->_aRequest['parent_category']);
      $oQuery->bindParam('parent_id', $this->_aRequest['parent_id']);
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
      $oDb = new PDO('mysql:host=' . SQL_HOST . ';dbname=' . SQL_DB, SQL_USER, SQL_PASSWORD);
      $oDb->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

      $oQuery = $oDb->prepare("	DELETE FROM
                                  comments
                                WHERE
                                  id = :id
                                LIMIT
                                  1");

      $oQuery->bindParam('id', $iId);
      $bResult = $oQuery->execute();

      $oDb = null;
      return $bResult;
    }
    catch (AdvancedException $e) {
      $oDb->rollBack();
    }
  }
}