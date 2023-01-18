<?php

namespace App\Repository;

use App\Entity\Playlist;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;
use const FCATEGORIES;
use const PFORMATIONS;

define("PIDID", "p.id id");
define("PNAMENAME", "p.name name");
define("CNAME", "c.name");
define("PFORMATIONS", "p.formations");
define("CNCATEGORIENAME", "c.name categoriename");
define("FCATEGORIES", "f.categories");
/**
 * @extends ServiceEntityRepository<Playlist>
 *
 * @method Playlist|null find($id, $lockMode = null, $lockVersion = null)
 * @method Playlist|null findOneBy(array $criteria, array $orderBy = null)
 * @method Playlist[]    findAll()
 * @method Playlist[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PlaylistRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Playlist::class);
    }

    public function add(Playlist $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Playlist $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }
    
    /**
     * Retourne toutes les playlists triées sur le nom de la playlist
     * @param type $ordre
     * @return Playlist[]
     */
    public function findAllOrderByName($ordre): array{
        return $this->createQueryBuilder('p')
                ->leftjoin(PFORMATIONS, 'f')
                ->groupBy('p.id')
                ->orderBy('p.name', $ordre)
                ->getQuery()
                ->getResult(); 
    }

    /**
    * Enregistrements dont un champ contient une valeur
    * ou tous les enregistrements si la valeur est vide
    * @param type $champ
    * @param type $valeur
    * @return array
    */
    public function findByContainValue($champ, $valeur): array{
        if($valeur==""){
            return $this->findAllOrderByName('ASC');
        }
        return $this->createQueryBuilder('p')
            ->leftjoin(PFORMATIONS, 'f')
            ->where('p.'.$champ.' LIKE :valeur')
            ->setParameter('valeur', '%'.$valeur.'%')
            ->groupBy('p.id')
            ->orderBy('p.name', 'ASC')
            ->getQuery()
            ->getResult(); 
    }
    
    /**
     * Enregistrements dont un champ contient une valeur
     * Et "table" en paramètre
     * @param type $champ
     * @param type $valeur
     * @param type $table
     * @return array
     */
    public function findByContainValueTable($champ, $valeur, $table): array{
        if($valeur==""){
            return $this->findAllOrderByName('ASC');
        }
        return $this->createQueryBuilder('p')
            ->leftjoin(PFORMATIONS, 'f')
            ->leftjoin(FCATEGORIES, 'c')
            ->where('c.'.$champ.' LIKE :valeur')
            ->setParameter('valeur', '%'.$valeur.'%')
            ->groupBy('p.id')                
            ->orderBy('p.name', 'ASC')
            ->getQuery()
            ->getResult();     
    }
    
    /**
     * Retourne toutes les playlists triées sur le nombre de formations     
     * @param type $ordre
     * @return Playlist[]
     */
    public function findAllOrderByNbFormations($ordre): array{
        return $this->createQueryBuilder('p')                
                ->leftjoin(PFORMATIONS, 'f')               
                ->groupBy('p.id')             
                ->orderBy('count(p.name)', $ordre)                
                ->getQuery()
                ->getResult();       
    }      
}
