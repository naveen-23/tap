<?php

namespace App\Payu\Constants;
 
class PayuErrorCode
{
    const BAD_REQUEST_ERROR                 = 'BAD_REQUEST_ERROR';
    const PAYU_SERVER_ERROR                      = 'SERVER_ERROR';
    const PAYU_GATEWAY_ERROR                     = 'GATEWAY_ERROR';

    public static function exists($code)
    {
        $code = strtoupper($code);

        return defined(get_class() . '::' . $code);
    }
}
