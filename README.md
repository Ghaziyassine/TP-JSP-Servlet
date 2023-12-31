# TP-JSP-Servlet
## Table des matières

1. [Aperçu](#aperçu)
2. [Captures d'écran](#captures-décran)
3. [Structure du Projet](#structure-du-projet)
4. [Prérequis](#prérequis)
5. [Exécution du Projet](#exécution-du-projet)


## Aperçu
Le projet de Système de Gestion de Salles et de Machines est une application web basée sur JavaServer Pages (JSP). Il vise à faciliter la gestion des salles et des machines au sein d'une organisation. L'application offre les fonctionnalités suivantes :

- Création, lecture, mise à jour et suppression (CRUD) des salles et des machines.
- Recherche des machines disponibles dans chaque salle.
## Captures d'écran
Main menu:
![image](https://github.com/Ghaziyassine/TP-JSP-Servlet/assets/114885285/47e68a76-4d2a-471c-9973-190fd242874e)

Gestion des machines:
![image](https://github.com/Ghaziyassine/TP-JSP-Servlet/assets/114885285/37cec0dd-1fb6-43be-ab09-7c9edf040f0c)



Gestion des Salles:
![image](https://github.com/Ghaziyassine/TP-JSP-Servlet/assets/114885285/3753a091-e587-4401-ae21-50456698e534)


Page de Recherche:
![image](https://github.com/Ghaziyassine/TP-JSP-Servlet/assets/114885285/11c1e744-4c74-42a1-b9b9-6e7598b0c2cb)

## Structure du Projet

Le projet est organisé en suivant ces répertoires principaux :

- `src/main/java` : Contient les fichiers sources Java et les packages.
- `src/main/webapp` : Comprend les fichiers JSP et les ressources web.
- `src/main/resources` : Contient les fichiers de configuration, notamment le fichier de configuration Hibernate (`hibernate.cfg.xml`).

## Prérequis

Avant de lancer le projet, assurez-vous de disposer des éléments suivants :

- Java SE Development Kit (JDK)
- Un serveur compatible avec Java Servlet (par exemple, GlassFish, Tomcat)
- Base de données MySQL
- MySQL Connector/J (JDBC Driver) pour la connectivité à la base de données

## Exécution du Projet

Pour déployer et exécuter l'application :

1. Clonez ce référentiel sur votre machine locale.

2. Configurez votre base de données MySQL avec les paramètres appropriés, en veillant à ce que la configuration corresponde à celle définie dans le fichier `hibernate.cfg.xml` situé dans le répertoire `src/main/resources`.

3. Déployez le projet sur votre serveur compatible avec Java Servlet. Vous pouvez le faire en créant un fichier WAR à partir du projet et en le déployant sur le serveur.

4. Démarrez votre serveur.

5. Accédez à l'application depuis votre navigateur web en utilisant l'URL correspondante (par exemple, `http://localhost:8080/RoomMachineManagement`). Assurez-vous d'adapter l'URL en fonction de votre configuration de serveur.

6. Vous pouvez désormais utiliser l'interface web pour gérer les salles et les machines.

### Clonage du Projet

1. Ouvrez votre terminal ou invite de commandes.

2. Utilisez la commande `git` pour cloner le projet depuis GitHub :
   ```bash
   git clone https://github.com/Ghaziyassine/TP-JSP-Servlet.git
