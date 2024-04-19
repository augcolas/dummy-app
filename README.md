# Création d'un Dockerfile simple

## Pour lancer le projet en local

Il vous faut **NodeJS 20**.

```
npm i
node index.js
```

## Créer un Dockerfile pour cette application NodeJS

Il s'agit d'une application web basique réalisée en NodeJS avec Express.

* Vous devez **créer le Dockerfile** et **build l'image** pour lancer cette application.

Vous devez optimiser votre image pour que l'étape d'installation des dépendances soit supprimée du cache **seulement si** vous modifiez le contenu du fichier `package.json` ou `package-lock.json`.

build with :
```
docker build -t <image-name> .
```

## Configuration du container

Une fois l'image créée vous pouvez découvrir les différents arguments disponibles pour créer et lancer un conteneur.

* Vous devez lancer votre image afin d'accéder à l'application web **depuis votre navigateur sur votre hôte**.

  ```
  docker run --name <container-name> -p 8080:8080 <image-name>
  ```
  
* Vous devez modifier la variable d'environnement `PORT` pour lancer le conteneur de l'application web avec le port **1337** à l'écoute.

  ```
  docker run --name <container-name> -p 1337:1337 -e PORT=1337 <image-name>  
  ```
* Vous devez modifier le hostname de votre conteneur pour le faire correspondre à : **mydocker**.

  ```
  docker run --name <container-name> -p 1337:1337 -e PORT=1337 --hostname mydocker <image-name>
  ```