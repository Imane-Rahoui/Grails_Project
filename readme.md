### *Membres du groupe :*
  - *MITRE Zohair*
  - *RAHOUI Imane*

## SI VOUS SOUHAITEZ TESTER LE CODE 
Il suffit de changer le basePath au niveau du fichier *application.yml*

# I. Présentation : 

Le site e-commerce de la societé LECOINCOIN qui est une société familiale qui existe depuis 1940, gérée par Mr Gerard Lecoincoin et Mme Mathilde Lecoincoin.C'est une entreprise de dépôt vente touchant à tout ce qui peut se vendre ou s’acheter.

# II. ROLES :

Au niveau de ce site on trouve 3 roles importants :

- Moderator : 
### 1. Client : 
  
  Ce rôle designe l'utiliateur ayant le moins de privilèges. Il peut simplement :

- Visualiser ses propres annonces.

- Visualiser une annonce en cliquant sur son titre.

- Modifier une de ses annonces en cliquant sur le bouton ***Edit*** de cette dernière :

- Ajouter une annonce en cliquant sur le bouton ***Add Ad*** :

### 2. Admin :

Ce rôle designe l'administrateur qui a le maximum de droits au sein de l'application. 

Il peut :

- Visualiser toutes les annonces disponibles dans le site : 

- Visualiser une annonce en cliquant sur son titre : 

- Supprimer / Editer une annonce.

- Visualiser tous les utilisateurs avec leurs ID, username, rôle et leurs annonces :
    
- Visualiser une annonce en cliquant sur leur ID : 
    
- Modifier un utilisateur en cliquant sur le bouton ***Edit*** de cette dernier :

- Supprimer un utilisateur en cliquant sur le bouton ***Delete*** de cette dernier :

- Ajouter un utilisateur en cliquant sur le bouton ***New User*** :

### 3. Moderateur :

C'est utilisateur ayant les memes priviléges d'un admin

# III. Sécurité :
 
 - **Gestion des roles/auth** :
 
Chaque rôle à ses propres droits et interdictions (par exemple un client ne peut pas accéder à la page contenant les users de la plateforme), la gestion de ces auth se fait par le biais de la notation :
```
    @Secured(['ROLE_ADMIN','ROLE_CLIENT'])
```

 - **HASH PASSWORD** : 

Le chiffrement des passwords se fait à l'aide de spring security

# IV. BONUS:

Nous avons réussi à ajouter la fonctionnalité d'ajout de multiple illustrations en meme temps.

# V. Démonstration :

## 1 -> 5

https://user-images.githubusercontent.com/77898496/205471659-d5c06fd1-c8f0-4e34-b62d-cc26c64294df.mp4

## 6 -> 7

https://user-images.githubusercontent.com/77898496/205472204-5219f6a1-08e2-49b7-a76b-96c353074888.mp4

## 8 -> 12

https://user-images.githubusercontent.com/77898496/205472176-0f085595-0a98-40ba-8ad0-2d180e1572ad.mp4

