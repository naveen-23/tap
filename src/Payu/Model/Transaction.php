<?php

declare(strict_types=1);

namespace App\Payu\Model;

class Transaction
{
    private $_key;
    private $_txnid;
    private $_productinfo;
    private $_amount;
    private $_email;
    private $_firstname;
    private $_surl;
    private $_furl;
    private $_phone;
    private $_hash;
    private $_salt;
    private $_status;

    private $_additionalCharges;

    CONST TXN_ID_PREFIX = 'PTS_';

    /**
     * @return mixed
     */
    public function getKey()
    {
        return $this->_key;
    }

    /**
     * @param mixed $_key
     *
     * @return self
     */
    public function setKey($_key)
    {
        $this->_key = $_key;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getTxnid()
    {
        return $this->_txnid;
    }

    /**
     * @param mixed $_txnid
     *
     * @return self
     */
    public function setTxnid($_txnid)
    {
        $this->_txnid = $_txnid;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getProductinfo()
    {
        return $this->_productinfo;
    }

    /**
     * @param mixed $_productinfo
     *
     * @return self
     */
    public function setProductinfo($_productinfo)
    {
        $this->_productinfo = $_productinfo;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getAmount()
    {
        return $this->_amount;
    }

    /**
     * @param mixed $_amount
     *
     * @return self
     */
    public function setAmount($_amount)
    {
        $this->_amount = $_amount;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getEmail()
    {
        return $this->_email;
    }

    /**
     * @param mixed $_email
     *
     * @return self
     */
    public function setEmail($_email)
    {
        $this->_email = $_email;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getFirstname()
    {
        return $this->_firstname;
    }

    /**
     * @param mixed $_firstname
     *
     * @return self
     */
    public function setFirstname($_firstname)
    {
        $this->_firstname = $_firstname;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getSurl()
    {
        return $this->_surl;
    }

    /**
     * @param mixed $_surl
     *
     * @return self
     */
    public function setSurl($_surl)
    {
        $this->_surl = $_surl;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getFurl()
    {
        return $this->_furl;
    }

    /**
     * @param mixed $_furl
     *
     * @return self
     */
    public function setFurl($_furl)
    {
        $this->_furl = $_furl;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getPhone()
    {
        return $this->_phone;
    }

    /**
     * @param mixed $_phone
     *
     * @return self
     */
    public function setPhone($_phone)
    {
        $this->_phone = $_phone;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getHash()
    {
        return $this->_hash;
    }

    /**
     * @param mixed $_hash
     *
     * @return self
     */
    public function setHash($_hash)
    {
        $this->_hash = $_hash;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getSalt()
    {
        return $this->_salt;
    }

    /**
     * @param mixed $_salt
     *
     * @return self
     */
    public function setSalt($_salt)
    {
        $this->_salt = $_salt;

        return $this;
    }
    /**
     * @return mixed
     */
    public function getStatus()
    {
        return $this->_status;
    }

    /**
     * @param mixed $_status
     *
     * @return self
     */
    public function setStatus($_status)
    {
        $this->_status = $_status;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getAdditionalCharges()
    {
        return $this->_additionalCharges;
    }

    /**
     * @param mixed $_additionalCharges
     *
     * @return self
     */
    public function setAdditionalCharges($_additionalCharges)
    {
        $this->_additionalCharges = $_additionalCharges;

        return $this;
    }


    public function setFields($payment)
    {
        $order= $payment->getOrder();
        $customer = $order->getCustomer();
        $shipping = $order->getShippingAddress();
        
        $txnId = uniqid() ;//self::TXN_ID_PREFIX.$order->getNumber(); 
        $amount = (int) $payment->getAmount() / 100; // amount stored with decimal hence thiss
        $this->setTxnid($txnId);
        $this->setAmount($amount);
        $this->setEmail($customer->getEmail());
        $this->setFirstname($customer->getFirstname());

        //print"<pre>";print_r(());print"</pre>";
        $firstProdName = $order->getItems()->first()->getProductName();
        $this->setProductinfo($firstProdName); // empty for now

        $this->setPhone($shipping->getPhoneNumber());

    }

    public function generateHash() {

        //sha512(key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5||||||SALT) 

        $str = $this->checkNull($this->getKey()).'|'.$this->checkNull($this->getTxnid()).'|'.$this->checkNull($this->getAmount()).'|'.$this->checkNull($this->getProductinfo()).'|'.$this->checkNull($this->getFirstname()).'|'.$this->checkNull($this->getEmail()).'|||||||||||'.$this->getSalt();

        //echo "$str".'<br/>';
        //echo "sha512(gtKFFx|10|59000|sandisk|test|test@gmail.com|||||||||||wia56q6O)".PHP_EOL;

        //exit();
        $hash = strtolower(hash('sha512',$str));


        //sha512(key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5||||||SALT)

        return $hash;
    }

    public function getReverseHash() {

        //Calculate response hash to verify 
        $keyString          =   $this->getKey().'|'.$this->getTxnid().'|'.$this->getAmount().'|'.$this->getProductinfo().'|'.$this->getFirstname().'|'.$this->getEmail().'||||||||||';
        $keyArray           =   explode("|",$keyString);
        $reverseKeyArray    =   array_reverse($keyArray);
        $reverseKeyString   =   implode("|",$reverseKeyArray);
        $CalcHashString     =   strtolower(hash('sha512', $this->getSalt().'|'.$this->getStatus().'|'.$reverseKeyString)); //hash without additionalcharges
        
        //echo "|".$this->getSalt().'|'.$this->getStatus().'|'.$reverseKeyString."| <br/>";
        //check for presence of additionalcharges parameter in response.
        $additionalCharges  =   "";
        
        If (!is_null($this->getAdditionalCharges())) {
           $additionalCharges=$this->getAdditionalCharges();
           //hash with additionalcharges
           $CalcHashString  =   strtolower(hash('sha512', $additionalCharges.'|'.$this->getSalt().'|'.$this->getStatus().'|'.$reverseKeyString));
        }

        return $CalcHashString;


    } 


    public function getPostFields() {

        return ['key'=>$this->getKey(),
                'txnid'=>$this->getTxnid() ,
                'amount'=>$this->getAmount() ,
                'productinfo'=>$this->getProductinfo() ,
                'firstname'=>$this->getFirstname() ,
                'email'=>$this->getEmail() ,
                'phone'=>$this->getPhone() ,
                'surl'=>$this->getSurl() ,
                'furl'=>$this->getFurl() ,
                'hash'=>$this->getHash() ,
           
            ];
    }

    public function getLogDetails($postdata) {

        return [
                'txnid'=>$this->getTxnid() ,
                'amount'=>$this->getAmount() ,
                'firstname'=>$this->getFirstname() ,
                'email'=>$this->getEmail() ,
                'phone'=>$postdata['phone'] ,
                'status'=>$this->getStatus(),
                'mihpayid'=>$postdata['mihpayid'],
                'payment_source'=>$postdata['payment_source'],
                'PG_TYPE'=>$postdata['PG_TYPE'],
                'bank_ref_num'=>$postdata['bank_ref_num'],
                'bankcode'=>$postdata['bankcode'],
                'error'=>$postdata['error'],
                'error_Message'=>$postdata['error_Message'],
                'card_type'=>$postdata['card_type'],
                'issuing_bank'=>$postdata['issuing_bank'],     
           
            ];
    }

    public function checkNull($value) {
        return ($value == null) ? ''  : $value;
    }
}
