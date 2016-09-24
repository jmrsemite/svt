<?php

class Semite_BasicOperations_Refund extends Semite_Operation
{
	protected $_action     = 'basicoperations';
	protected $_parameters = array(
        'authentication'            => array(
            'api_id'=>array('required'=>TRUE),
            'secret_key'=>array('required'=>TRUE)
        ),
        'type'=>array(
            'required'      => TRUE,
            'default_value' => 'Refund' // E-commerce
        ),
        'processor'=>array('required'=>TRUE),
        'amount'=>array('required'=>TRUE),
        'currencyId'=>array('required'=>TRUE),
        'countryId'=>array('required'=>TRUE),
        'trackingMemberCode'=>array('required'=>TRUE),
        'transactionId'  => array(
					'required' => TRUE,
				),
        'transactionGuid'  => array(
            'required' => TRUE,
        ),
        'additionalInfo'   => array(),
		);

	public function setTransactionId ($transaction_id)
	{
		if ($transaction_id)
		{
			$this->addData('transactionId', $transaction_id);
		}
		else
		{
			throw new Semite_Exception('Transaction ID not set or invalid');
		}
	}

    public function setTransactionGuid ($transaction_guid)
    {
        if ($transaction_guid)
        {
            $this->addData('transactionGuid', $transaction_guid);
        }
        else
        {
            throw new Semite_Exception('Transaction GUID not set or invalid');
        }
    }

	public function setAmountAndCurrencyId ($amount, $currency_code)
	{
		if (is_numeric($amount) && $amount > 0 && $currency_code)
		{
            $this->addData('amount',     $amount);
            $this->addData('currencyId', $currency_code);
		}
		else
		{
			throw new Semite_Exception('Amount or Currency Code not set or invalid');
		}
	}
}


