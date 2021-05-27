<?php

namespace App\EventSubscriber;

use App\Repository\ConferenceRepository;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;
use Symfony\Component\HttpKernel\Event\ControllerEvent;
use Twig\Environment;

class TwigEventSubscriber implements EventSubscriberInterface
{
    /**
     * @var ConferenceRepository
     */
    private $conferenceRepository;

    /**
     * @var Environment
     */
    private $twig;

    public function __construct(Environment $twig, ConferenceRepository $conferenceRepository)
    {
        $this->twig = $twig;
        $this->conferenceRepository = $conferenceRepository;
    }


    public function onKernelController(ControllerEvent $event)
    {
        $this->twig->addGlobal('conferences',$this->conferenceRepository->TrierYearAscCityDesc());
    }

    public static function getSubscribedEvents()
    {
        return [
            'kernel.controller' => 'onKernelController',
        ];
    }
}
