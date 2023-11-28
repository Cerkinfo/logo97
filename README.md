# logo97

## Histoire

1997: [David 'Glu' GLAUDE décide de faire un rendu du logo en Pov-Ray.](https://web.archive.org/web/20000823140146/http://glu.freeservers.com/logoci.htm)

2023: Le cercle et ses membres utilisent encore une version rognée et compressée du rendu original qui a une résolution de 240 x 400. 

Autant dire qu'avec les standards de résolutions qui augmentent au fil du temps, utiliser le rendu d'origine dans les affiches et montages devient moche. Au vu du matos qu'on a maintenant, autant refaire des rendus de plus haute résolution.

Ce repo est donc constitué d'une reconstitution des fichiers permettant le rendu dudit logo. 

## Utilisation

- éditer 'options.ini' àfin de de définir les options de rendu auprès du programme 'povray'
- exécuter '$ povray options.ini' pour lancer le rendu

## Fichiers 

- param.inc : contient les variables globales.
- logo.pov : contient les 'objets'(polyêdres), la 'camera'(point et angle de vue) et la lumière projetée sur la forme finale. 
- options.ini : contient les paramètres de rendu.

## Liens utiles

[Documentation de Pov-Ray](https://www.povray.org/documentation/) (A noter que la version utilisée ici est la version 2)