<?php


namespace App\Form;

use App\Entity\Formation;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;

/**
 * Description of PlaylistType
 *
 * @author samsam
 */
class PlaylistType extends AbstractType {
   
    public function buildForm(FormBuilderInterface $builder, array $options): void {
        $builder
            ->add('name', TextType::class, [
                    'label' => 'Playlist',
                    'required' => true])
            ->add('description', TextareaType::class, [
                    'label' => 'Description',
                    'required' => false
                ])
           ->add('formations', EntityType::class,[
               'class' => Formation::class,
               'choice_label' => 'title',
               'multiple' => true,
               'required' => false
           ])
            ->add('submit', SubmitType::class, [
                'label' => 'Enregistrer'
            ]);
    }
    
}