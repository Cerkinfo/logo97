// Logo du Cercle Informatique au format Persistence of Vision Raytracer
//
// Ce fichier peut être utilisé par le Cercle Informatique de l'U.L.B.
//  pour la production de son Logo sous quelque support que ce soit.
//
// Il peut être modifié aux conditions suivantes:
//  * Il n'est pas possible d'obtenir le même résultat par paramétrage.
//  * Conserver le copyright original de l'auteur.
//  * Conserver dans les archives du cercle (et on-line si possible)
//     la version originale ainsi que toutes les versions successives.
//  * Indiquer clairement au moyen de commentaire les modifications ainsi
//     que leur auteur.
//  * Tenir à jour l'historique des modifications dans chaque nouvelles
//     version.
//
// Copyright David GLAUDE [Glu] 1997. e-mail: glu@who.net

// Historique:
//  20/09/97, David GLAUDE: Première version du logo (date du
//   fichié retrouvé dans mes personnes).
//  25/05/97, David GLAUDE: Adaptation pour PovRay version 2
//   et paramétrisation pour faciliter les animations.
//  21/06/97, David GLAUDE: Finalisation du fichier original et séparation
//   des paramètres dans un fichier externe avant sa mise on-line pour
//   le 'donner' au Cercle.
//  22/06/97, David GLAUDE: Création d'animations 60*100 et 75*100.
//   Réalisation d'une page web d'exemple
//   le 'donner' au Cercle.

#version 2              // Compatibilite avec la version 2 de Pov !!!

// Pour le logo du CI, il est recommande de suivre les regles suivantes:
//  Rc=Ri        (Les tubes du C et du I ont le meme rayon)
//  Lc+Rc=Li+Ri  (Le C et le I ont la meme longueur avec le rayon compris)
//  Hi>Ri+Rc+Lc  (Les bords du C et du I ne se touche pas verticalement)
//  Ah=-Al       (Les bords du C sont coupe au meme angle haut et bas)
//  Am=(Ah+Ab)/2 (L'angle moyen du C est entre Ah et Al)
// Les valeurs originales sont:
//#declare Lc=20        // Longueur (= Grand rayon du tore) du C
//#declare Li=20        // Longueur du I

//#declare Hi=35        // Hauteur du I
//#declare Rc=5         // Rayon du tube du C (= Petit rayon du tore)
//#declare Ri=5         // Rayon des tubes du I
//#declare Ah=30        // Angle "Haut" du C
//#declare Ab=-30       // Angle "Bas" du C
//#declare Am=(Ah+Ab)/2 // Angle "Moyen" du C

// Les angles de rotation du C et du CI permettent d'annimé le logo
// Les valeurs originales sont:
//#declare RotCx=0
//#declare RotCy=0
//#declare RotCz=0
//#declare RotCIx=0
//#declare RotCIy=0
//#declare RotCIz=0

// Trois couleurs et deux texture sont utilisees.
// Les couleurs et textures originales sont:
//#declare Blanc = colour red 1.0 green 1.0 blue 1.0
//#declare Mauve = colour red 0.35 green 0.25 blue 0.35
//#declare Black = colour red 0.0 green 0.0 blue 0.0
//#declare tci = texture{pigment{colour Mauve} finish{ambient 0.6 diffuse 0.4}}
//#declare tfond = texture{pigment{colour Blanc} finish{ambient 1 diffuse 0}}

#include "param.inc"

//Background plan
/*
object {
 plane{<0,0,1>,1000}
 texture{tfond}
}
*/
//// La camera pour un logo 640*480.
camera {
    location  <0.0, 0.0, -120.0>
    direction <0.0, 0.0, 1.0>
    up        <0.0, 1.0, 0.0>
    right     <1.33333, 0.0, 0.0>
    }

//// La camera pour un logo 60*100.
//camera {
//    location  <0.0, 0.0, -102.0>
//    direction <0.0, 0.0, 1.0>
//    up        <0.0, 1.0, 0.0>
//    right     <0.6, 0.0, 0.0>
//    }

//// La camera pour un logo 75*100.
//camera {
//    location  <0.0, 0.0, -115.0>
//    direction <0.0, 0.0, 1.0>
//    up        <0.0, 1.0, 0.0>
//    right     <0.75, 0.0, 0.0>
//    }

// La source de lumiere.
object {
    light_source {
        <100,100,-100>
        color Blanc
        }
    }

//// La source de lumiere plus proche.
//object {
//    light_source {
//        <70,70,-70>
//        color Blanc
//        }
//    }

#declare i=object{
    union{
        cylinder {<0,-Hi,0>,<0,Hi,0>,Ri}     // Cylindre vertical
        cylinder {<Li,Hi,0>,<-Li,Hi,0>,Ri}   // Cylindre horizontal haut
        cylinder {<Li,-Hi,0>,<-Li,-Hi,0>,Ri} // Cylindre horizontal bas
        sphere {<Li,Hi,0>,Ri}                // Sphere haut droite
        sphere {<-Li,Hi,0>,Ri}               // Sphere haut gauche
        sphere {<Li,-Hi,0>,Ri}               // Sphere bas droite
        sphere {<-Li,-Hi,0>,Ri}              // Sphere bas gauche
        }
    }

#declare c=object{
 union{              // Union de la tore coupee avec deux spheres
  intersection{      // Intersection du tore avec la partie visible
   torus{Lc,Rc rotate<90,0,0>}
    union{           // Union de la partie "Haute" et de la partie "Basse"
     intersection{   // Partie visible "Haute" du tore
      plane{<0,-1,0>0 rotate<0,0,Ah>}
      plane{<0,-1,0>,0 rotate<0,0,Am>}
      }
     intersection{   // Partie visible "Haute" du tore
      plane{<0,1,0>,0 rotate<0,0,Ab>}
      plane{<0,1,0>,0 rotate<0,0,Am>}
      }
     }
    }
   sphere{<Li,0,0>,Rc rotate<0,0,Ab>} // bouts arrondis bas
   sphere{<Li,0,0>,Rc rotate<0,0,Ah>} // bouts arrondis haut
  }
 }

union {
 object{c rotate<0, 0, 0>}
 object{i}
 rotate<0, 0, 0>
 texture{tci}
 }
