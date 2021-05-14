<?php

/*
 * This file is part of the Sylius package.
 *
 * (c) Paweł Jędrzejewski
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

declare(strict_types=1);

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Templating\EngineInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Twig\Environment;
use Twig\Environment as TwigEnvironment;

class StaticContentController
{
    /** @var EngineInterface|Environment */
    private $twig;

    /**
     * @param EngineInterface|Environment $templatingEngine
     */
    public function __construct(TwigEnvironment $twig)
    {
        $this->twig = $twig;
    }

    public function indexAction(Request $request,$name): Response
    {
        return new Response($this->twig->render('@SyliusShop/Static/'.$name.'.html.twig'));
    }
}
