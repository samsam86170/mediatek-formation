<?php

namespace App\Tests\Repository;

use App\Entity\Formation;
use App\Repository\FormationRepository;
use DateTime;
use Symfony\Bundle\FrameworkBundle\Test\KernelTestCase;

/**
 * Description of FormationRepositoryTest
 *
 * @author samsam
 */
class FormationRepositoryTest extends KernelTestCase{
    
    /**
     * Récupère le repository de Formation
     */
    public function recupRepository(): FormationRepository{
        self::bootKernel();
        $repository = self::getContainer()->get(FormationRepository::class);
        return $repository;
    }
    
    /**
     * Récupère le nombre d'enregistrements contenus dans la table Formation
     */
    public function testNbFormations(){
        $repository = $this->recupRepository();
        $nbFormations = $repository->count([]);
        $this->assertEquals(239, $nbFormations);
    }
    
    /**
     * Création d'une instance de Formation avec les champs
     * @return Formation
     */
    public function newFormation(): Formation{
        $formation = (new Formation())
                ->setTitle("FormationDeTest")
                ->setDescription("DESCRIPTION DE FORMATIONDETEST")
                ->setPublishedAt(new DateTime("2023/01/14"));
        return $formation;
    }
    
    public function testAddFormation(){
        $repository = $this->recupRepository();
        $formation = $this->newFormation();
        $nbFormations = $repository->count([]);
        $repository->add($formation, true);
        $this->assertEquals($nbFormations + 1, $repository->count([]), "erreur lors de l'ajout");
    }
    
    public function testRemoveFormation(){
        $repository = $this->recupRepository();
        $formation = $this->newFormation();
        $repository->add($formation, true);
        $nbFormations = $repository->count([]);
        $repository->remove($formation, true);
        $this->assertEquals($nbFormations - 1, $repository->count([]), "erreur lors de la suppression");
    }
    
    public function testFindAllOrderBy(){
        $repository = $this->recupRepository();
        $formation = $this->newFormation();
        $repository->add($formation, true);
        $formations = $repository->findAllOrderBy("title", "ASC");
        $nbFormations = count($formations);
        $this->assertEquals(240, $nbFormations);
        $this->assertEquals("Android Studio (complément n°1) : Navigation Drawer et Fragment", $formations[0]->getTitle());
    }
    
    public function testFindAllOrderByTable(){
        $repository = $this->recupRepository();
        $formation = $this->newFormation();
        $repository->add($formation, true);
        $formations = $repository->findAllOrderByTable("name", "ASC", "playlist");
        $nbFormations = count($formations);
        $this->assertEquals(238, $nbFormations);
        $this->assertEquals("Bases de la programmation n°74 - POO : collections", $formations[0]->getTitle());
    }
    
    public function testFindByContainValue(){
        $repository = $this->recupRepository();
        $formation = $this->newFormation();
        $repository->add($formation, true);
        $formations = $repository->findByContainValue("title", "C#");
        $nbFormations = count($formations);
        $this->assertEquals(11, $nbFormations);
        $this->assertEquals("C# : ListBox en couleur", $formations[0]->getTitle());
    }
    
    public function testFindByContainValueTable(){
        $repository = $this->recupRepository();
        $formation = $this->newFormation();
        $repository->add($formation, true);
        $formations = $repository->findByContainValueTable("name", "Compléments Android (programmation mobile)", "playlist");
        $nbFormations = count($formations);
        $this->assertEquals(12, $nbFormations);
        $this->assertEquals("Android Studio (complément n°13) : Permissions", $formations[0]->getTitle());
    }
     
     public function testFindAllLasted(){
        $repository = $this->recupRepository();
        $formation = $this->newFormation();
        $repository->add($formation, true);
        $formations = $repository->findAllLasted(1);
        $nbFormations = count($formations);
        $this->assertEquals(1, $nbFormations);
        $this->assertEquals(new DateTime("2023-01-16 13:33:39"), $formations[0]->getPublishedAt());
    }
      
    public function testFindAllForOnePlaylist(){
        $repository = $this->recupRepository();
        $formation = $this->newFormation();
        $repository->add($formation, true);
        $formations = $repository->findAllForOnePlaylist(3);
        $nbFormations = count($formations);
        $this->assertEquals(19, $nbFormations);
        $this->assertEquals("Python n°0 : installation de Python",$formations[0]->getTitle());
    }
    
}
