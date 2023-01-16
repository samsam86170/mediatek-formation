<?php

namespace App\Tests\Repository;

use App\Entity\Playlist;
use App\Repository\PlaylistRepository;
use Symfony\Bundle\FrameworkBundle\Test\KernelTestCase;

/**
 * Description of PlaylistRepositoryTest
 *
 * @author samsam
 */
class PlaylistRepositoryTest extends KernelTestCase {
    
    /**
     * Récupère le repository de Playlist
     */
    public function recupRepository(): PlaylistRepository{
        self::bootKernel();
        $repository = self::getContainer()->get(PlaylistRepository::class);
        return $repository;
    }
    
    /**
     * Récupère le nombre d'enregistrements contenus dans la table Playlist
     */
    public function testNbPlaylists(){
        $repository = $this->recupRepository();
        $nbPlaylists = $repository->count([]);
        $this->assertEquals(28, $nbPlaylists);
    }
    
    /**
     * Création d'une instance de Playlist avec les champs
     * @return Playlist
     */
    public function newPlaylist(): Playlist{
        $playlist = (new Playlist())
                ->setName("PlaylistDeTest")
                ->setDescription("DESCRIPTION DE PLAYLISTDETEST");
        return $playlist;
    }
    
    public function testAddPlaylist(){
        $repository = $this->recupRepository();
        $playlist = $this->newPlaylist();
        $nbPlaylists = $repository->count([]);
        $repository->add($playlist, true);
        $this->assertEquals($nbPlaylists + 1, $repository->count([]), "erreur lors de l'ajout");
    }
    
    public function testRemoveFormation(){
        $repository = $this->recupRepository();
        $playlist = $this->newPlaylist();
        $repository->add($playlist, true);
        $nbPlaylists = $repository->count([]);
        $repository->remove($playlist, true);
        $this->assertEquals($nbPlaylists - 1, $repository->count([]), "erreur lors de la suppression");
    }
    
    public function testFindAllOrderByName(){
        $repository = $this->recupRepository();
        $playlist = $this->newPlaylist();
        $repository->add($playlist, true);
        $playlists = $repository->findAllOrderByName("ASC");
        $nbPlaylists = count($playlists);
        $this->assertEquals(29, $nbPlaylists);
        $this->assertEquals("Android - Test playlist", $playlists[0]->getName());
    }
    
     public function testFindAllOrderByNbFormations(){
        $repository = $this->recupRepository();
        $playlist = $this->newPlaylist();
        $repository->add($playlist, true);
        $playlists = $repository->findAllOrderByNbFormations("ASC");
        $nbPlaylists = count($playlists);
        $this->assertEquals(29, $nbPlaylists);
        $this->assertEquals("Cours Informatique embarquée", $playlists[0]->getName());
    }
    
    public function testFindByContainValue(){
        $repository = $this->recupRepository();
        $playlist = $this->newPlaylist();
        $repository->add($playlist, true);
        $playlists = $repository->findByContainValue("name", "Sujet");
        $nbPlaylists = count($playlists);
        $this->assertEquals(8, $nbPlaylists);
        $this->assertEquals("Exercices objet (sujets EDC BTS SIO)", $playlists[0]->getName());
    }
    
    public function testFindByContainValueTable(){
        $repository = $this->recupRepository();
        $playlist = $this->newPlaylist();
        $repository->add($playlist, true);
        $playlists = $repository->findByContainValue("name", "MCD", "categories");
        $nbPlaylists = count($playlists);
        $this->assertEquals(5, $nbPlaylists);
        $this->assertEquals("Cours MCD MLD MPD", $playlists[0]->getName());
    }
   
}