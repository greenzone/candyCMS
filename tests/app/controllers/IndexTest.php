<?php

namespace CandyCMS\Controller;

require_once PATH_STANDARD . '/../../../app/controllers/Index.controller.php';

/**
 * Test class for Index.
 * Generated by PHPUnit on 2012-02-13 at 19:35:36.
 */
class IndexTest extends \PHPUnit_Framework_TestCase {

  /**
   * @var Index
   */
  protected $object;

  /**
   * Sets up the fixture, for example, opens a network connection.
   * This method is called before a test is executed.
   */
  protected function setUp() {
    $aRequest = array();
    $aFile    = array();
    $aCookie  = array();
    $aSession['userdata'] = array(
      'email' => '',
      'facebook_id' => '',
      'id' => 0,
      'name' => '',
      'surname' => '',
      'password' => '',
      'role' => 0,
      'full_name' => ''
    );

    $this->object = new Index($aRequest, $aSession, $aFile, $aCookie);;
  }

  /**
   * Tears down the fixture, for example, closes a network connection.
   * This method is called after a test is executed.
   */
  protected function tearDown() {

  }

  /**
   * @covers CandyCMS\Controller\Index::__destruct
   */
  public function test__destruct() {}

  /**
   * @covers CandyCMS\Controller\Index::getConfigFiles
   */
  public function testGetConfigFiles() {
    $this->assertFileExists(dirname(__FILE__) . '/../../../config/Candy.inc.php');
    $this->assertFileExists(dirname(__FILE__) . '/../../../config/Plugins.inc.php');
    $this->assertTrue($this->object->getConfigFiles(array('Candy', 'Plugins'), dirname(__FILE__) . '/../../../'));
  }

  /**
   * @covers CandyCMS\Controller\Index::getPlugins
   */
  public function testGetPlugins() {
    $this->assertTrue($this->object->getPlugins('Bbcode,FormatTimestamp', dirname(__FILE__) . '/../../../'));
  }

  /**
   * @covers CandyCMS\Controller\Index::getLanguage
   * @todo Implement testGetLanguage().
   */
  public function testGetLanguage() {
    $this->assertStringMatchesFormat('en_US', $this->object->getLanguage(dirname(__FILE__) . '/../../../'));
  }

  /**
   * @covers CandyCMS\Controller\Index::setTemplate
   * @todo Implement testSetTemplate().
   */
  #public function testSetTemplate() {
  #}

  /**
   * @covers CandyCMS\Controller\Index::setUser
   * @todo Implement testSetUser().
   */
  public function testSetUser() {
    $this->assertEquals(8, sizeof($this->object->setUser()));
  }

  /**
   * @covers CandyCMS\Controller\Index::show
   * @todo Implement testShow().
   */
  #public function testShow() {
  #  $this->assertContains('HTML', $this->object->show());
  #}
}
?>
