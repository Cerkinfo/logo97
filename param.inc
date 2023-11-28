// Paramètres modifiable du LOGO du Cercle Informatique de l'U.L.B.
// Copyright David GLAUDE, 1997.

#declare Lc=20          // Longueur (= Grand rayon du tore) du C
#declare Li=20          // Longueur du I
#declare Hi=35          // Hauteur du I
#declare Rc=5           // Rayon du tube du C (= Petit rayon du tore)
#declare Ri=5           // Rayon des tubes du I
#declare Ah=30          // Angle "Haut" du C
#declare Ab=-30         // Angle "Bas" du C
#declare Am=(Ah+Ab)/2   // Angle "Moyen" du C

#declare RotCx=0
#declare RotCy=0
#declare RotCz=0
#declare RotCIx=0
#declare RotCIy=0
#declare RotCIz=0

#declare Blanc = colour red 1.0 green 1.0 blue 1.0
//#declare Mauve = colour red 0.35 green 0.25 blue 0.35
#declare Mauve = colour red 0.3215686274509804 green 0.09019607843137255 blue 0.6352941176470588
#declare Black = colour red 0.0 green 0.0 blue 0.0
#declare tci = texture{pigment{colour Mauve} finish{ambient 0.6 diffuse 0.4}}
#declare tfond = texture{pigment{colour Black} finish{ambient 1 diffuse 0}}
