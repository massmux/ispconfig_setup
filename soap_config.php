<?php

/*
 * ENDPOINT - Soap
 */

$mypass=$argv[2];
$mydom=$argv[1];

$username               = 'remoteuser';
$password               = $mypass;
$soap_location          = 'https://' . $mydom . ':8080/remote/index.php';
$soap_uri               = 'https://' . $mydom . ':8080/remote/';

/*
$client = new SoapClient(null, array('location'         => $soap_location,
       	                             'uri'              => $soap_uri,
               	                     'trace'            => 1,
				     'exceptions'       => 1));
 */

try{

	    
} catch (SoapFault $e) {
	$error = 'SOAP Error: ' . $e->getMessage();
}





?>
