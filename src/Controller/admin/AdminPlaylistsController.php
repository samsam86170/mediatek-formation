<?php

namespace App\Controller\admin;

use App\Entity\Playlist;
use App\Form\PlaylistType;
use App\Repository\CategorieRepository;
use App\Repository\FormationRepository;
use App\Repository\PlaylistRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Gère les routes de la page d'administration des playlists
 *
 * @author samsam
 */
class AdminPlaylistsController extends AbstractController {
    
    /**
     * 
     * @var FormationRepository
     */
    private $playlistRepository;
    
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
     * @param PlaylistRepository $playlistRepository
     * @param FormationRepository $formationRepository
     * @param CategorieRepository $categorieRepository
     */
    function __construct(PlaylistRepository $playlistRepository, FormationRepository $formationRepository, CategorieRepository $categorieRepository) {
        $this->playlistRepository = $playlistRepository;
        $this->formationRepository = $formationRepository;
        $this->categorieRepository = $categorieRepository;
    }
    
    
    /**
     * Création de la route vers la page des playlists
     * @Route("/admin/playlists", name="admin.playlists")
     * @return Response
     */
    public function index(): Response{
        $playlists= $this->playlistRepository->findAllOrderByName('ASC');
        $categories = $this->categorieRepository->findAll();
        return $this->render("admin/admin.playlists.html.twig", [
            'playlists' => $playlists,
            'categories' => $categories
        ]);
    }
    
    /**
     * Suppression d'une playlist
     * @Route("/admin/suppr.playlist/{id}", name="admin.suppr.playlist")
     * @param Playlist $playlists
     * @return Response
     */
    public function suppr(Playlist $playlists): Response{
        $this->playlistRepository->remove($playlists, true);
        return $this->redirectToRoute('admin.playlists');
    }
    
    /**
     * Edition d'une playlist
     * @Route("/admin/edit.playlists/{id}", name="admin.edit.playlists")
     * @param Playlist $playlists
     * @param Request $request
     * @return Response
     */
    public function edit(Playlist $playlists, Request $request): Response{
        $formPlaylist = $this->createForm(PlaylistType::class, $playlists);
        
        $formPlaylist->handleRequest($request);
        if($formPlaylist->isSubmitted() && $formPlaylist->isValid()){
            $this->playlistRepository->add($playlists, true);
            return $this->redirectToRoute('admin.playlists');
        }
        
        return $this->render("admin/admin.edit.playlists.html.twig", [
            'playlists' => $playlists,
            'formplaylist' => $formPlaylist->createView()
        ]);
    }
    
    /**
     * Ajout d'une playlist
     * @Route("/admin/ajout.playlists", name="admin.ajout.playlists")
     * @param Request $request
     * @return Response
     */
    public function ajout(Request $request): Response{
        $playlists = new Playlist();
        $formPlaylist = $this->createForm(PlaylistType::class, $playlists);
        
        $formPlaylist->handleRequest($request);
        if($formPlaylist->isSubmitted() && $formPlaylist->isValid()){
            $this->playlistRepository->add($playlists, true);
            return $this->redirectToRoute('admin.playlists');
        }
        
        return $this->render("admin/admin.ajout.playlists.html.twig", [
            'playlists' => $playlists,
            'formplaylist' => $formPlaylist->createView()                
        ]);
    }
    
    /**
     * Tri des enregistrements selon le nom des playlists
     * Ou selon le nombre de formations
     * @Route("/admin/playlists/tri/{champ}/{ordre}", name="admin.playlists.sort")
     * @param type $champ
     * @param type $ordre
     * @return Response
     */
    public function sort($champ, $ordre): Response{
        switch($champ){
            case "name":
                $playlists = $this->playlistRepository->findAllOrderByName($ordre);
                break;
            case "nbformations":
                $playlists = $this->playlistRepository->findAllOrderByNbFormations($ordre);
                break;
        }
        $categories = $this->categorieRepository->findAll();
        return $this->render("admin/admin.playlists.html.twig", [
            'playlists' => $playlists,
            'categories' => $categories
        ]);
    }
    
    /**
     * Récupère les enregistrements selon $champ $valeur
     * Et selon le $champ et la $valeur si autre $table
     * @Route("/admin/playlists/recherche/{champ}/{table}", name="admin.playlists.findallcontain")
     * @param type $champ
     * @param Request $request
     * @param type $table
     * @return Response
     */
    public function findAllContain($champ, Request $request, $table=""): Response{
        $valeur = $request->get("recherche");
        if($table !=""){
            $playlists = $this->playlistRepository->findByContainValueTable($champ, $valeur, $table);
        }else{
            $playlists = $this->playlistRepository->findByContainValueTable($champ, $valeur);
        }
        $categories = $this->categorieRepository->findAll();
        return $this->render("admin/admin.playlists.html.twig", [
            'playlists' => $playlists,
            'categories' => $categories,            
            'valeur' => $valeur,
            'table' => $table
        ]);
    }
    
    
}