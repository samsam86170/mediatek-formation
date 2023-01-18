<?php

namespace App\Form;

use App\Entity\Categorie;
use App\Entity\Playlist;
use DateTime;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;

/**
 * Builder permettant de définir les champs du formulaire d'ajout ou d'édition
 * d'une formation
 * @author samsam
 */
class FormationType extends AbstractType {
    
    /**
     * Ajout des champs pour le formulaire "formformation"
     * @param FormBuilderInterface $builder
     * @param array $options
     * @return void
     */
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
                ->add('title', TextType::class, [
                    'label' => 'Formation',
                    'required' => true])
                ->add('description', TextareaType::class, [
                    'label' => 'Description',
                    'required' => false
                ])
                ->add('playlist', EntityType::class, [
                    'class' => Playlist::class,
                    'label' => 'Playlist',
                    'choice_label' => 'name',
                    'multiple' => false,
                    'required' => true
                ])
                ->add('categories', EntityType::class, [
                'class' => Categorie::class,
                'label' => 'Catégorie',
                'choice_label' => 'name',
                'multiple' => true,
                'required' => false
                ])
                ->add('publishedAt', DateType::class, [
                    'widget' => 'single_text',
                    'data' => isset($options['data']) && $options['data']->getPublishedAt() != null ? $options['data']->getPublishedAt() : new DateTime('now'),
                    'label' => 'Date',
                    'required' => true
                ])
                ->add('submit', SubmitType::class, [
                'label' => 'Enregistrer'
                ]);     
    }
}