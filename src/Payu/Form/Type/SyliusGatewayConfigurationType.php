<?php

declare(strict_types=1);

namespace App\Payu\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;

final class SyliusGatewayConfigurationType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder->add('merchant_key', TextType::class);
        $builder->add('merchant_salt', TextType::class);
        $builder->add('success_url', TextType::class);
        $builder->add('failure_url', TextType::class);
        
    }
}