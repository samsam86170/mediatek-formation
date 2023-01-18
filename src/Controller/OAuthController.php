<?php

namespace App\Controller;

use KnpU\OAuth2ClientBundle\Client\ClientRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Gère les routes liées à l'authentification
 *
 * @author samsam
 */
class OAuthController extends AbstractController
{
    /**
     * Création de la route qui redirige vers l'authentification
     * @Route("/oauth/login", name="oauth_login")
     */
    public function index(ClientRegistry $clientRegistry): RedirectResponse
    {
        return $clientRegistry->getClient('keycloak')->redirect();
    }
    
    /**
     * Création de la route qui prend en charge la redirection du retour
     * @Route("/oauth/callback", name="oauth_check")
     */
    public function connectCheckAction(Request $request, ClientRegistry $clientRegistry)
    {
        
    }
    
    /**
     * Création de la route vers logout
     * @Route("/logout", name="logout")
     */
    public function logout()
    {

    }
}
