<?php

declare(strict_types=1);

namespace App\Payu\Action;




use App\Payu\SyliusApi;
use GuzzleHttp\Client;
use GuzzleHttp\Exception\RequestException;
use Payum\Core\Action\ActionInterface;
use Payum\Core\ApiAwareInterface;
use Payum\Core\Exception\RequestNotSupportedException;
use Payum\Core\Exception\UnsupportedApiException;
use Sylius\Component\Core\Model\PaymentInterface as SyliusPaymentInterface;
use Payum\Core\Request\Capture;
use Payum\Core\Reply\HttpPostRedirect;

final class CaptureAction implements ActionInterface, ApiAwareInterface
{
    /** @var Client */
    private $client;
    /** @var SyliusApi */
    private $api;
    CONST OFFSITE_URL = 'https://secure.payu.in/_payment' ; //'https://test.payu.in/_payment'; // 'https://secure.payu.in/_payment' prod 

    public function __construct(Client $client)
    {
        $this->client = $client;
    }

    public function execute($request): void
    {
        RequestNotSupportedException::assertSupports($this, $request);

        /** @var SyliusPaymentInterface $payment */
        $payment = $request->getModel();

        $transaction = $this->api->setTransaction($payment);// new Transaction($payment);
        $transaction->setSurl($request->getToken()->getTargetUrl());
        $transaction->setFurl($request->getToken()->getTargetUrl());

        $fields = $transaction->getPostFields();

       // print " STATUS|".$_POST['status']."|";
      //   print"<pre>";print_r($_POST);print"</pre>";exit();
      //   print"<pre>"; print_r(get_class_methods($request->getFirstModel()));print"</pre>";
      //  print"<pre>"; print_r(get_class_methods($payment));print"</pre>";
      //   print"<pre>"; print_r($payment->getDetails());print"</pre>";exit();
     //   print"<pre>"; print_r($transaction);print"</pre>";
     //   print"<pre>";  print_r($fields);print"</pre>";

        if(isset($_POST['status'])) {
            // TODO: properly validate response signature here
           // $payment->setDetails(['status' => $response->getStatusCode()]);
            // verify hash and confirm payments
            $transaction = $this->api->responseTransaction($_POST);
            $details = $transaction->getLogDetails($_POST);
            $respHash = $transaction->getReverseHash();

            /*echo "TEMP |".$transaction->generateHash()."| <br/>";
            echo "HASH |".$_POST['hash']."| <br/>";
            echo "RespHASH |".$respHash."| <br/>";
            */

            $details['hashVerify'] = ($respHash == $_POST['hash']) ? 1 : 0;
            // print"<pre>";print_r($transaction);print"</pre>"; 
            // print"<pre>";print_r($details);print"</pre>"; exit();
            $payment->setDetails($details);
          //      print"<pre>"; print_r($payment->getDetails());print"</pre>";
            return;
        }
        
        try {

            $offsiteUrl  = self::OFFSITE_URL;
            $data    = $fields;
            $headers = ['application/x-www-form-urlencoded'];

            throw new HttpPostRedirect(
                $offsiteUrl,
                $data,
                200,
                $headers
            );
        } catch (RequestException $exception) {
            $response = $exception->getResponse();
        } finally {
           // $payment->setDetails(['status' => $response->getStatusCode()]);
        }
    }

    public function supports($request): bool
    {
        return
            $request instanceof Capture &&
            $request->getModel() instanceof SyliusPaymentInterface
        ;
    }

    public function setApi($api): void
    {
        if (!$api instanceof SyliusApi) {
            throw new UnsupportedApiException('Not supported. Expected an instance of ' . SyliusApi::class);
        }

        $this->api = $api;
    }
}