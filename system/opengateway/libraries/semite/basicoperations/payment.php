<?php

class Semite_BasicOperations_Payment extends Semite_Operation
{
	protected $_action     = 'basicoperations';
	protected $_parameters = array(
			'authentication'            => array(
                'api_id'=>array('required'=>TRUE),
                'secret_key'=>array('required'=>TRUE)
            ),
            'creditCard'=>array(
                'cardNumber'=>array('required'=>TRUE),
                'cardholder'=>array('required'=>TRUE),
                'cardExpiryMonth'=>array('required'=>TRUE),
                'cardExpiryYear'=>array('required'=>TRUE),
                'cardCvv'=>array('required'=>TRUE),
            ),
            'type'=>array(
                'required'      => TRUE,
                'default_value' => 'Charge' // E-commerce
            ),
            'amount'=>array('required'=>TRUE),
            'currencyId'=>array('required'=>TRUE),
            'countryId'=>array('required'=>TRUE),
            'processor'=>array('required'=>TRUE),
            'trackingMemberCode'=>array('required'=>TRUE),
            'dbaName'   => array(),
            'dbaCity'   => array(),
            'avsAddress'          => array(),
            'avsZip'              => array(),
            'xid'              => array(),
            'additionalInfo'   => array(),
            'merchantAccountType'=>array(
                'required'      => TRUE,
                'default_value' => 1 // E-commerce
            ),
		);

	public function setAmountAndCurrencyId ($amount, $currency_code)
	{
		if (is_numeric($amount) && $amount > 0 && $currency_code)
		{
			$this->addData('amount',     $amount);
			$this->addData('currencyId', $currency_code);
		}
		else
		{
			throw new Semite_Exception('Amount or Currency ID not set or invalid');
		}
	}

	public function setCardNumberAndHolder ($card_number, $card_holder = NULL)
	{
		$this->addData('cardNumber', $card_number,'creditCard');

		if ($card_holder)
			$this->addData('cardholder', $card_holder,'creditCard');
	}

	public function setCardExpiry ($expiry_month, $expiry_year)
	{
		$this->addData('cardExpiryMonth', $expiry_month,'creditCard');
		$this->addData('cardExpiryYear',  $expiry_year,'creditCard');
	}

	public function setCardValidationCode ($card_vc)
	{
		$this->addData('cardCvv', $card_vc,'creditCard');
	}

    public function setXid ($xid)
    {
        $this->addData('xid',$xid);
    }

    public function setDynamicDescriptor ($dbaName, $dbaCity)
    {
        $this->addData('dbaName', $dbaName);
        $this->addData('dbaCity',     $dbaCity);
    }

    public function setAvsAddress ($avs_address, $avs_zip)
    {
        $this->addData('avsAddress', $avs_address);
        $this->addData('avsZip',     $avs_zip);
    }

    public function setAdditionalInfo ($additionalInfo)
    {
        $this->addData('additionalInfo', $additionalInfo);
    }

}


