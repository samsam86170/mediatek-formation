<?php

namespace App\Controller\admin;

use App\Entity\Formation;
use App\Form\FormationType;
use App\Repository\CategorieRepository;
use App\Repository\FormationRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Gère les routes de la page d'administration des formations
 *
 * @author samsam
 */
class AdminFormationsController extends AbstractController {
    
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
     */
    function __construct(FormationRepository $formationRepository, CategorieRepository $categorieRepository) {
        $this->formationRepository = $formationRepository;
        $this->categorieRepository = $categorieRepository;
    }
    
    /**
     * Création de la route vers la page d'administration des formations
     * @Route("/admin", name="admin.formations")
     * @return Response
     */
    public function index(): Response{
        $formations = $this->formationRepository->findAllOrderBy('title', 'ASC');
        $categories = $this->categorieRepository->findAll();
        return $this->render("admin/admin.formations.html.twig", [
            'formations' => $formations,
            'categories' => $categories
        ]);
    }
    
    /**
     * Suppression d'une formation
     * @Route("/admin/suppr.formation/{id}", name="admin.suppr.formation")
     * @param Formation $formations
     * @return Response
     */
    public function suppr(Formation $formations): Response{
        $this->formationRepository->remove($formations, true);
        return $this->redirectToRoute('admin.formations');
    }
    
    /**
     * Edition d'une formation
     * @Route("/admin/edit/{id}", name="admin.edit.formations")
     * @param Formation $formations
     * @param Request $request
     * @return Response
     */
    public function edit(Formation $formations, Request $request): Response{
        $formFormation = $this->createForm(FormationType::class, $formations);
        
        $formFormation->handleRequest($request);
        if($formFormation->isSubmitted() && $formFormation->isValid()){
            $this->formationRepository->add($formations, true);
            return $this->redirectToRoute('admin.formations');
        }
        
        return $this->render("admin/admin.edit.formations.html.twig", [
            'formations' => $formations,
            'formformation' => $formFormation->createView()
        ]);
    }
    
    /**
     * Ajout d'une formation
     * @Route("/admin/ajout", name="admin.ajout.formations")
     * @param Request $request
     * @return Response
     */
    public function ajout(Request $request): Response{
        $formations = new Formation();
        $formFormation = $this->createForm(FormationType::class, $formations);
        
        $formFormation->handleRequest($request);
        if($formFormation->isSubmitted() && $formFormation->isValid()){
            $this->formationRepository->add($formations, true);
            return $this->redirectToRoute('admin.formations');
        }
        
        return $this->render("admin/admin.ajout.formations.html.twig", [
            'formations' => $formations,
            'formformation' => $formFormation->createView()                
        ]);
    }
    
     /**
     * Retourne toutes les formations triées sur un champ
     * Et sur un champ si autre table
     * @Route("/admin/formations/tri/{champ}/{ordre}/{table}", name="admin.formations.sort")
     * @param type $champ
     * @param type $ordre
     * @param type $table
     * @return Response
     */
    public function sort($champ, $ordre, $table=""): Response{
        if($table != ""){
            $formations = $this->formationRepository->findAllOrderByTable($champ, $ordre, $table);
        }else{
            $formations = $this->formationRepository->findAllOrderBy($champ, $ordre);
        }
        $categories = $this->categorieRepository->findAll();
        return $this->render('admin/admin.formations.html.twig', [
            'formations' => $formations,
            'categories' => $categories
        ]);
    }
    
    /**
     * Récupère les enregistrements selon le champ et la valeur,
     * Et si le champ est dans une autre table
     * @Route("/admin/formations/recherche/{champ}/{table}", name="admin.formations.findallcontain")
     * @param type $champ
     * @param Request $request
     * @param type $table
     * @return Response
     */
    public function findAllContain($champ, Request $request, $table=""): Response{
        $valeur = $request->get("recherche");
        if($table !=""){
            $formations = $this->formationRepository->findByContainValueTable($champ, $valeur, $table);
        }else{
            $formations = $this->formationRepository->findByContainValue($champ, $valeur);
        }
        $categories = $this->categorieRepository->findAll();
        return $this->render('admin/admin.formations.html.twig', [
            'formations' => $formations,
            'categories' => $categories,
            'valeur' => $valeur,
            'table' => $table
        ]);
    }  
}
