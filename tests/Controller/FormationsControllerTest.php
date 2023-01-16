<?php

namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use Symfony\Component\HttpFoundation\Response;

/**
 * Description of FormationsControllerTest
 *
 * @author samsam
 */
class FormationsControllerTest extends WebTestCase {
    
    private const FORMATIONSPATH = '/formations';
    /**
     * Teste l'acces de la page des formations
    */
    public function testAccesPage() {
        $client = static::createClient();
        $client->request('GET', self::FORMATIONSPATH);
        $this->assertResponseStatusCodeSame(Response::HTTP_OK);
        
    }

    public function testPlaylistsTriAsc(){
        $client = static::createClient();
        $crawler = $client->request('GET', '/formations/tri/name/ASC/playlist');
        $this->assertSelectorTextContains('th', 'formation');
        $this->assertCount(5, $crawler->filter('th'));
        $this->assertSelectorTextContains('h5', 'Bases de la programmation n°74 - POO : collections');
    }
    
    public function testFormationsTriAsc(){
        $client = static::createClient();
        $crawler = $client->request('GET', '/formations/tri/title/ASC');
        $this->assertSelectorTextContains('th', 'formation');
        $this->assertCount(5, $crawler->filter('th'));
        $this->assertSelectorTextContains('h5', 'Android Studio (complément n°1) : Navigation Drawer et Fragment');
    }
    
     public function testTriDate()
    {
        $client = static::createClient();
        $crawler = $client->request('GET', 'formations/tri/publishedAt/ASC');
        $this->assertSelectorTextContains('th', 'formation');
        $this->assertCount(5, $crawler->filter('th'));
        $this->assertSelectorTextContains('h5', 'Cours UML (1 à 7 / 33) : introduction');
    }
    
     public function testFiltreFormations()
    {
        $client = static::createClient();
        $client->request('GET', '/formations'); 
        $crawler = $client->submitForm('filtrer', [
            'recherche' => 'UML'
        ]);
        //vérifie le nombre de lignes obtenues
        $this->assertCount(10, $crawler->filter('h5'));
        // vérifie si la formation correspond à la recherche
         $this->assertSelectorTextContains('h5', 'UML');
    }
    
     public function testFiltrePlaylists()
    {
        $client = static::createClient();
        $client->request('GET', '/formations/recherche/name/playlist'); 
        $crawler = $client->submitForm('filtrer', [
            'recherche' => 'Eclipse'
        ]);
        //vérifie le nombre de lignes obtenues
        $this->assertCount(9, $crawler->filter('h5'));
        // vérifie si la formation correspond à la recherche
         $this->assertSelectorTextContains('h5', 'Eclipse');
    }
    
    public function testFiltreCategories()
    {
        $client = static::createClient();
        $client->request('GET', '/formations/recherche/id/categories'); 
        $crawler = $client->submitForm('filtrer', [
            'recherche' => 'Java'
        ]);
        //vérifie le nombre de lignes obtenues
        $this->assertCount(8, $crawler->filter('h5'));
        // vérifie si la formation correspond à la recherche
         $this->assertSelectorTextContains('h5', 'Java REACT');
    }
    
    public function testLinkFormations() {
        $client = static::createClient();
        $client->request('GET','/formations');
        $client->clickLink("image réduite de formation");
        $response = $client->getResponse();
        $this->assertEquals(Response::HTTP_OK, $response->getStatusCode());
        $uri = $client->getRequest()->server->get("REQUEST_URI");
        $this->assertEquals('/formations/formation/1', $uri);
    }
}
