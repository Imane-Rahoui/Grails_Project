**Cahier des charges fonctionnel**

**Auteur**

| **Nom / mail**                       |  **Qualité / rôle**    |
|--------------------------------------|------------------------|
| Grégory Galli / greg.galli@gmail.com | Client / Product Owner |

**Historique des modifications et révisions de ce document**

| **n° de version**  | **Date**   | **Description et circonstances de la modification** |
|--------------------|------------|-----------------------------------------------------|
| V 1.0              | 13/07/2020 | Cahier des charges validé                           |
| V 1.1              | 15/12/2021 | Modifications                                       |
| V 1.2              | 14/09/2022 | Modifications                                       |

# 

Table des matières

[1. Contexte](#contexte)

[1.1. Acteurs](#acteurs)

[1.2. Dates importantes](#dates-importantes)

[2. Objectifs](#objectifs)

[2.1. Gestion de projet](#gestion-de-projet)

[3. Expression détaillée du besoin](#expression-détaillée-du-besoin)

[3.1. Besoins fonctionnels](#_Toc114091586)

[3.1.1. Backend](#backend)

[3.1.2. API REST](#api-rest)

[3.2. Besoins non fonctionnels](#_Toc114091589)

[4. Livraison](#livraison)

[4.1. Démonstration](#démonstration)

[5. Informations complémentaires](#informations-complémentaires)

[5.1. Contraintes de budget](#contraintes-de-budget)

[5.2. Bonus](#bonus)

[5.3. Pénalités](#pénalités)

# 1. Contexte

Lecoincoin est une société familiale qui existe depuis 1940, elle est gérée par Mr Gerard Lecoincoin et Mme Mathilde Lecoincoin.

Lecoincoin est une entreprise de dépôt vente touchant à tout ce qui peut se vendre ou s’acheter.

Lecoincoin a raté le tournant du numérique, il y a quelques décennies et aimerait vraiment pouvoir avoir une présence en ligne pour diffuser ses annonces.

## 1.1. Acteurs

Le projet sera exploité par Mr Gérard Lecoincoin qui aura la lourde tâche d’administrer les annonces sur la plateforme qui sera créée.

Mme Mathilde Lecoincoin n’était pas à l’aise avec l’outil informatique, n’aura qu’un rôle de modérateur pour ne pas risquer de causer trop de dégâts.

## 1.2. Dates importantes

Lecoincoin fêtera ses 80 ans bientôt ! Il faut donc impérativement que tous les éléments demandés soient livrés pour cette date !

# 2. Objectifs

Réaliser une plateforme complète avec plusieurs modes de consultation :

-   Un backend devra être réalisé pour permettre à Mr Lecoincoin d’administrer les annonces, les modifier, les supprimer et même en créer !
-   Une API REST devra être réalisée, car Mr Lecoincoin est ambitieux et il aimerait vraiment avoir une application mobile dans un futur proche.

## 2.1. Gestion de projet

La méthode de gestion de projet sera une méthode agile informelle ou s’approchant de quelque chose comme de [l’Extreme Programming (XP)](https://fr.wikipedia.org/wiki/Extreme_programming).

Le product owner sera toujours disponible pour répondre à vos questions et vous pouvez lui poser autant de questions que nécessaire.

Vous travaillerez en binôme, sur des itérations courtes en validant systématiquement les fonctionnalités à deux.

Aucun document relatif à la gestion de projet n’est attendu.

# 3. Expression détaillée du besoin

## 3.1. Besoins fonctionnels

### 3.1.1. Backend

-   Une couche de sécurité sera ajoutée afin d’empêcher l’accès à la partie backend sans identifiants
-   Les comptes utilisateurs pourront avoir 3 rôles différents
    -   ADMIN
    -   MODERATOR
    -   CLIENT
-   L’administrateur et le modérateur pourront tous deux accéder au backend
-   Le rôle CLIENT sera réservé aux utilisateurs de la partie API qui sera développée plus tard
-   Au-delà des utilisateurs (User) qui seront liés à des rôles (Role) pour la sécurité, votre modèle de donnée permettra de gérer des annonces (SaleAd) et leurs illustrations (Illustration)
-   Toutes les opérations de CRUD seront disponibles sur les entités représentant
    -   Les utilisateurs
    -   Les annonces
    -   Les illustrations n’auront pas de gestion indépendante, elles seront simplement modifiables dans les annonces

Pour résumer, les actions réalisables pour la partie backend sont les suivantes :

-   S’identifier / Se déconnecter
-   Créer / Visualiser / Mettre à jour / Supprimer
    -   Des annonces (avec upload d’illustrations)
    -   Des utilisateurs

### 3.1.1. API REST

-   L’API REST sera disponible sur une adresse spécifique, l’accès à cette API devra être protégé : par exemple : <https://lecoincoin.fr/api/>
-   L’API devra entièrement être réalisée avec vos petites mains, Mr Lecoincoin ne fait pas confiance aux API générées via des annotations ou autres mécanismes de génération de code.
-   L’API devra être capable de renvoyer du JSON ou du XML en fonction des paramètres d’appel (header Accept)
-   L’API prendra en charge les méthodes GET / POST / PUT / PATCH et DELETE sur les entités représentant les **utilisateurs** ainsi que les **annonces** (ressource individuelle ou collection)
-   L’API devra être testée et documentée à l’aide d’une collection POSTMAN que vous créerez, vous pouvez alternativement utiliser d’autres solutions comme Swagger pour la documentation si vous le souhaitez.

## 3.2. Besoins non fonctionnels

Pour le design, vous pouvez vous inspirer de tout ce que vous pourrez trouver en ligne mais Mr Lecoincoin adore le design de ce site : <https://leboncoin.fr>

Pour le design du backend, pas de fioriture, on fait simple et efficace, un menu pour naviguer entre les entités et un affichage de l’utilisateur identifié sera amplement suffisant, vous pourrez vous appuyer sur n’importe quelle base pertinente pour une interface d’administration [comme ceci par exemple](https://startbootstrap.com/themes/sb-admin-2/)

# 4. Livraison

-   La livraison devra se faire sur un git où tout le code sera disponible
    -   Vous aurez un accès à une classroom Github sur laquelle vous pourrez créer votre projet et pousser toutes les modifications
    -   La livraison aura lieu au plus tard le dimanche 16/10/2022 à 23h59
    -   Tout code non disponible à l’heure de la livraison se verra appliquer des pénalités
-   Les sources seront évidemment accompagnées de documentations
    -   Un readme qui détaillera tout ce qui a été réalisé et éventuellement les petites choses que vous auriez pu faire en plus
    -   Une collection Postman sera ajoutée aux sources pour permettre de tester simplement l’API produite
-   Votre rémunération (note) prendra en compte :
    -   Le respect des demandes en termes de fonctionnalité
    -   La qualité et la propreté du code produit
    -   Le soin apporté au design des parties backend / frontend
    -   Le respect des règles de bon sens en termes d’UX

## 4.1. Démonstration

La recette de ce projet se fera lors d’une démonstration qui aura lieu quelque temps après la livraison de votre code avec le product owner, cette démonstration devra être réalisée en 10 minutes et devra présenter tous les éléments réalisés dans une présentation dynamique faite par les développeurs de la solution (pas de slides, juste une présentation des éléments produits)

Le scénario de démonstration sera le suivant :

1.  S'identifier avec un compte administrateur (1)
2.  Créer un nouvel utilisateur (2) avec un rôle administrateur
3.  Se déconnecter du compte (1)
4.  S'identifier avec le compte que vous venez de créer (2)
5.  Afficher la liste des utilisateurs et aller supprimer le compte administrateur d'origine (1)
6.  Créer une annonce et l'attribuer à un utilisateur ayant un rôle "CLIENT" sans oublier de lui ajouter des illustrations
7.  Afficher la liste des annonces et retrouver l'Annonce que vous venez de créer
8.  Se déconnecter du compte (2)
9.  S'identifier avec le compte client auquel nous avons attribué l'Annonce à l'étape 6.
10. Afficher les annonces du compte client
11. Supprimer l'Annonce créée à l'étape 6.
12. Se déconnecter

# 5. Informations complémentaires

## 5.1. Contraintes de budget

Mr Lecoincoin a un budget serré, il ne pourra vous payer qu’en points, il en a 20 à vous attribuer.

Bien évidemment plus ses exigences seront satisfaites, plus il sera généreux !

Notez que tout retard entraînera fatalement une perte de points.

## 5.2. Bonus

Mr Lecoincoin est malgré tout un homme généreux et vous pourrez gagner des points en plus si vous arrivez à réaliser certaines tâches hors scope :

-   Déployer votre solution en ligne sur une plateforme comme Heroku par exemple
-   Proposer une fonctionnalité utile à laquelle il n’aurait pas pensé !

## 5.3. Pénalités

Monsieur Lecoincoin est cependant peu tolérant sur certains points qui pourraient vous couter cher :

-   Ne pas fournir de readme expliquant votre production
-   Fournir un code qui ne s’exécute pas (bien tester sur un projet vierge que tout fonctionne) ou qui nécessite des corrections pour être lancé
-   Mettre en place un système de sécurité où les mots de passe ne seraient pas hashés
-   Le plagiat
