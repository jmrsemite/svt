<?php

$url = "http://localhost/api/";

$post_string = '<?xml version="1.0" encoding="UTF-8"?>
<request>
	<authentication>
		<api_id>C38896B47</api_id>
		<secret_key>FC4207B5-5725-5B15-8907-D456E8B9C0AD</secret_key>
	</authentication>
  <type>Charge</type>
  <processor>48</processor>
  <countryId>792</countryId>
  <amount>19.00</amount>
  <currencyId>826</currencyId>
  <trackingMemberCode>Payment 947014 - 100221</trackingMemberCode>
  <creditCard>
    <cardNumber>4012888888881881</cardNumber>
    <cardholder></cardholder>
    <cardExpiryMonth>07</cardExpiryMonth>
    <cardExpiryYear>2017</cardExpiryYear>
    <cardCvv>515</cardCvv>
  </creditCard>
  <merchantAccountType>1</merchantAccountType>
  <dbaName>SMTPTMNT</dbaName>
  <dbaCity>Grocka</dbaCity>
  <avsAddress></avsAddress>
  <avsZip></avsZip>
  <additionalInfo></additionalInfo>
</request>';

$postfields = $post_string; 

$ch = curl_init();
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0); 
curl_setopt($ch, CURLOPT_URL,$url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_TIMEOUT, 4);
curl_setopt($ch, CURLOPT_POSTFIELDS, $postfields); 


$data = curl_exec($ch); 

if(curl_errno($ch))
{
    print curl_error($ch);
}
else
{
	curl_close($ch);
    echo $data;
}


?>