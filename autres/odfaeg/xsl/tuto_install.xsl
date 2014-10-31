<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="/xsl/structure.xsl"?>
<page>
    <icon>/img/toto.png</icon>
    <menu>/menu.xml</menu>
    <footer>/tonfooter.xml</footer>
    <title>ODFAEG</title>
    <content>
        <fr>
        	<html>
			<h1>Chapitre I : Installation de ODFAEG.</h1>

		<u>Prérequis : </u>

		Avant d'installer ODFAEG il vous faudra installer 2 autres petites librairies, un compilateur c++  qui supporte le nouveau standard c++14 (gcc version 4.9.x) ainsi que cmake, rassurer vous, c'est très rapide à installer : 

		<u>Installation des outils de compilation.</u>

		Sous linux il suffit d'ouvrir un terminal, de se connecter en mode super utilisateur et de taper cette commande apt-get install gcc-4.9 g++-4..9 cmake-gui pour les plateformes 64 bits ou bien  apt-get install gcc-4.9-multilib g++-4.9-multilib cmake-gui et passer le flag -m32 lors de la compilation pour les plateformes 32 bits.

		Il vous faudra peut être aussi installer la version 4.8 de gcc également si il vous avez des erreurs de linkage avec certains fonctions de la STL.

		Sous windows vous devez aller sur ce site : http://tdm-gcc.tdragon.net/ et télécharger un compilateur tdm-gcc 32 bits pour les plateformes 32 bits ou 64 bits pour les plateformes 64 bits.
		Ensuite, installer cmake-gui : http://www.cmake.org/cmake/resources/software.html

		<u>Installation de la librairie SFML.</u>

		Pour installer SFML tout est expliqué sur le site web du développeur principal : <a href="http://en.sfml-dev.org">Site de la SFML.</a>

		Pas besoin donc d'en dire plus.

		ODFAEG utilise SFML pour faire des applications portable et utiliser l'encapsulation qu'offre SFML sur toute les bibliothèques codée en C qui sont utilisée par les différents modules de ODFAEG.

		<u>Installation de openSSL.</u>

		Fortement recommandée si vous voulez faire des applications sécurisée qui communique en réseau, cette librairie est utilisé par ODFAEG pour chiffrer les informations qui transite sur un réseau.

		Sur linux il suffit de taper la commande apt-get install libssl-dev.

		Sous windows la meilleur méthode est de télécharger MSYS : http://sourceforge.net/projects/mingw/files/

		Ensuite télécharger les sources de openssl : https://www.openssl.org/

		Installer ensuite perl : http://www.perl.org/get.html

		Lancer MSYS, aller dans le répertoire de openssl et ensuite, taper la commande suivante : 

		perl Configure mingw

		Aller ensuite dans le fichier MakeFile, chercher la ligne PLATFORM et remplacer mingw par TDM-GCC-32 pour les plateformes 32 bits et TDM-GCC-64 pour les plateformes 64 bits.(Sinon ça ne compile pas)

		Taper ensuite les commandes suivante : make et make install pour installer la librairie.

		<u>Installation de la librairie ODFAEG : </u>

		Une fois ces quelques outils d'installés, il ne vous reste plus qu'à installer ODFAEG, son installation est similaire à l'installation de SFML, ODFAEG ne fournis pas de librairie pré-compilée, vous devez donc télécharger le code source  ouvrir Cmake et la compiler.

		Cliquer sur browse source et spécifier l'endroit ou vous avez télécharger ODFAEG.

		Cliquer ensuite sur browse build et créer un nouveau dossier dans le répertoire ODFAEG, appeller le par exemple ODFAEG-build.

		Cliquez ensuite sur le bouton Configure choissez l'option Specify native compiler et indiquer l'endroit ou se trouve vos compilateur c et c++. (C:/TDM-GCC-32/bin ou bien C:/TDM-GCC-64/bin sous windows ou bien /usr/bin sous linux.)

		Là, il vous affiche une série d'option Cmake include préfix correspond à l'endroit ou vous voulez installer ODFAEG.

		Attention : pour les plateformes 32 bits spécifier la valeur i386 pour CMAKE_ARCHITECTURE,  sinon, spécifier la valeur i686 pour les plateformes 64 bits.

		Si ça ne compile pas, décocher l'option Build shared lib. (Il se peut que le mode dynamique ne soit pas encore supporté)

		Lorsque tout est bon cliqué à nouveau sur configure et ensuite sur generate.

		Ouvrez un terminal et aller dans le dossier ODFAEG-build (là ou se trouve le Makefile de ODFAEG)
		Sous windows taper les commandes mingw32-make et mingw-make install pour installé la librairies.
		Sous linux taper les commandes make et make install.

		Et voilà ODFAEG est installé.

		Il ne vous reste plus qu'à créer un projet dans votre EDI préféré et de créer un nouveau projet, n'oublier pas de lier les différentes bibliothèque de ODFAEG à votre projet (qui se trouve dans le dossier lib de ODFAEG) et de préciser l'endroit ou se trouvent les fichiers d'en tête de ODFAEG, de SFML et d'openssl. (Dans les dossier include de ODFAEG et de SFML et de openssl)
		Il vous faudra aussi lier les librairies suivantes à votre projet :

		-GLEW en static.
		-SFML en dynamic.
		-Opengl.
		-Openssl et gdi32 si vous être sous windows. (ou bien libssl et libcrypto si vous être sous linux)

		N'oublier pas de définir la macro ODFAEG_STATIC si vous avez compilé la librairie en mode static.

		Voilà normalement vous devez pouvoir compiler un projet utilisant ODFAEG, une fois que tout ceci est bon vous pouvez passé au chapitre suivant.
		</html>
        </fr>
    </content>
</page>
