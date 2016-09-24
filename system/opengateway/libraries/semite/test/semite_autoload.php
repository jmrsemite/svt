<?php
	/**
	* @access public
	* @param mixed $class_name
	* @return void
	*/

require_once(APPPATH . 'libraries/semite/client.php');
require_once(APPPATH . 'libraries/semite/exception.php');
require_once(APPPATH . 'libraries/semite/operation.php');
require_once(APPPATH . 'libraries/semite/translator.php');
if (!class_exists('ArrayToXML')) {
    require_once(APPPATH . 'libraries/semite/arraytoxml.php');
}
require_once(APPPATH . 'libraries/semite/basicoperations/payment.php');
require_once(APPPATH . 'libraries/semite/basicoperations/refund.php');