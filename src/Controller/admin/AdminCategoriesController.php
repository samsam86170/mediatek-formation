<?php

namespace App\Controller\admin;

use App\Entity\Categorie;
use App\Repository\CategorieRepository;
use App\Repository\FormationRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Gère les routes de la page d'administration des catégories
 *
 * @author samsam
 */
class AdminCategoriesController extends AbstractController {
    
    /**
     * 
     * @var FormationRepository
     */
    private $formationRepository;
    
    /**
     * 
     * @var CategorieRepository
     */
    private $categorieRepository;
    
    /**
     * Création du constructeur
     * @param FormationRepository $formationRepository
     * @param CategorieRepository $categorieRepository
     */
    function __construct(FormationRepository $formationRepository, CategorieRepository $categorieRepository) {
        $this->formationRepository = $formationRepository;
        $this->categorieRepository= $categorieRepository;
    }
    
    /**
     * Création de la route vers la page d'administration des catégories
     * @Route("/admin/categories", name="admin.categories")
     * @return Response
     */
    public function index(): Response{
        $formations = $this->formationRepository->findAll();
        $categories = $this->categorieRepository->findAll();
        return $this->render("/admin/admin.categories.html.twig", [
            'formations' => $formations,
            'categories' => $categories,
        ]);
    }
    
    /**
     * Suppression d'une catégorie et redirection vers la page d'administration
     * @Route("/admin/categories/suppr/{id}", name="admin.categories.suppr")
     * @param Categorie $categorie
     * @return Response
     */
    public function suppr(Categorie $categorie): Response{
        $this->categorieRepository->remove($categorie, true);
        return $this->redirectToRoute('admin.categories');
    }
    
    /**
     * Ajout d'une catégorie et redirection vers la page d'administration
     * @Route("/admin/categories/ajout", name="admin.ajout.categorie")
     * @param Request $request
     * @return Response
     */
    public function ajout(Request $request): Response{
        $name = $request->get("name");
        $nomcategorie = $this->categorieRepository->findAllEqual($name);
        
        if ($nomcategorie == false) {
            $categories = new Categorie();
            $categories->setName($name);
            $this->categorieRepository->add($categories, true);
            return $this->redirectToRoute('admin.categories');
        }
        return $this->redirectToRoute('admin.categories');
    }
    
    /**
     * Tri les enregistrements selon le champ et l'ordre
     * @Route("/admin/categories/tri/{champ}/{ordre}", name="admin.categories.sort")
     * @param type $champ
     * @param type $ordre
     * @return Response
     */
    public function sort($champ, $ordre): Response{
        $categories = $this->categorieRepository->findAllOrderBy($champ, $ordre);
        $formations = $this->formationRepository->findAll();
        return $this->render('/admin/admin.categories.html.twig', [
            'formations' => $formations,
            'categories' => $categories,
        ]);
    }
}