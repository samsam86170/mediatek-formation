<?php

namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use Symfony\Component\HttpFoundation\Response;

/**
 * Description of PlaylistsControllerTest
 *
 * @author samsam
 */
class PlaylistsControllerTest extends WebTestCase {
    
    public function testAccesPage(){
       $client = static::createClient();
       $client->request('GET', '/playlists');
       $this->assertResponseStatusCodeSame(Response::HTTP_OK);
   }
    
    public function testTriPlaylists()
    {
        $client = static::createClient();
        $crawler = $client->request('GET', 'playlists/tri/name/ASC');
        $this->assertSelectorTextContains('th', 'playlist');
        $this->assertCount(4, $crawler->filter('th'));
        $this->assertSelectorTextContains('h5', 'Android - Test playlist');
    }
    
    public function testTriNbFormations()
    {
        $client = static::createClient();
        $crawler = $client->request('GET', 'playlists/tri/nbformations/ASC');
        $this->assertSelectorTextContains('th', 'playlist');
        $this->assertCount(4, $crawler->filter('th'));
        $this->assertSelectorTextContains('h5', 'Cours Informatique embarquée');
    }
    
    public function testFiltrePlaylists()
    {
        $client = static::createClient();
        $client->request('GET', '/playlists'); 
        $crawler = $client->submitForm('filtrer', [
            'recherche' => 'sujet'
        ]);
        //vérifie le nombre de lignes obtenues
        $this->assertCount(8, $crawler->filter('h5'));
        // vérifie si la formation correspond à la recherche
         $this->assertSelectorTextContains('h5', 'sujet');
    }
    
    public function testFiltreCategories()
    {
        $client = static::createClient();
        $client->request('GET', '/playlists/recherche/id/categories'); 
        $crawler = $client->submitForm('filtrer', [
            'recherche' => 'Android'
        ]);
        //vérifie le nombre de lignes obtenues
        $this->assertCount(3, $crawler->filter('h5'));
        // vérifie si la formation correspond à la recherche
         $this->assertSelectorTextContains('h5', 'Android - Test playlist');
    }
    
    public function testLinkPlaylists() {
        $client = static::createClient();
        $client->request('GET','/playlists');
        $client->clickLink("Voir détail");
        $response = $client->getResponse();
        $this->assertEquals(Response::HTTP_OK, $response->getStatusCode());
        $uri = $client->getRequest()->server->get("REQUEST_URI");
        $this->assertEquals('/playlists/playlist/28', $uri);
    }
}
