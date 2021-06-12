<?php

declare(strict_types=1);

namespace App\Payu\Factory;

use Payum\Core\Bridge\Spl\ArrayObject;
use Payum\Core\GatewayFactory;
use App\Payu\Action\StatusAction;
use App\Payu\SyliusApi;

final class PayuGatewayFactory extends GatewayFactory
{
    protected function populateConfig(ArrayObject $config): void
    {
        $config->defaults([
            'payum.factory_name' => 'sylius_payment',
            'payum.factory_title' => 'Pay U',
            'payum.action.status' => new StatusAction(),
        ]);


        $config['payum.api'] = function (ArrayObject $config) {
            return new SyliusApi($config['merchant_key'],$config['merchant_salt'],$config['success_url'],$config['failure_url']);
        };


    }
}