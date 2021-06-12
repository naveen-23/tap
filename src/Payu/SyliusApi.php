<?php

declare(strict_types=1);

namespace App\Payu;

use App\Payu\Model\Transaction;

final class SyliusApi
{
    /** @var string */
    private $merchantKey;

    public function __construct(string $merchantKey,string $merchantSalt, string $successUrl, string $failureUrl)
    {
        $this->merchantKey = $merchantKey; //'gtKFFx'; //$merchantKey;
        $this->merchantSalt = $merchantSalt; //'wia56q6O'; //$merchantSalt;
        $this->successUrl = $successUrl;
        $this->failureUrl = $failureUrl;
    }

    public function getMerchantKey(): string
    {
        return $this->merchantKey;
    }
     public function getMerchantSalt(): string
    {
        return $this->merchantSalt;
    }

     public function getSuccessUrl(): string
    {
        return $this->successUrl;
    }
     public function getFailureUrl(): string
    {
        return $this->failureUrl;
    }

    public function setTransaction($payment) {
        $transaction = new Transaction();


        $transaction->setKey($this->merchantKey);
        $transaction->setSalt($this->merchantSalt);

        //$transaction->setSurl($this->getSuccessUrl());
        //s$transaction->setFurl($this->getFailureUrl());

        $transaction->setFields($payment); 

        $hash = $transaction->generateHash();
        $transaction->setHash($hash);

        return $transaction;
    }

    public function responseTransaction($postdata) {
        $transaction = new Transaction();

        $transaction->setKey($postdata['key']);
        $transaction->setSalt($this->merchantSalt);

        $transaction->setTxnid($postdata['txnid']);
        $transaction->setAmount($postdata['amount']);
        $transaction->setProductinfo($postdata['productinfo']);
        $transaction->setFirstname($postdata['firstname']);
        $transaction->setEmail($postdata['email']);
        $transaction->setStatus($postdata['status']);

        $additionalCharges = isset($postdata['additionalCharges']) ? $postdata['additionalCharges'] : ''; 
        if(isset($postdata['additionalCharges'])) {
            $transaction->setAdditionalCharges($postdata['additionalCharges']);   
        }

        return $transaction;

    }
}