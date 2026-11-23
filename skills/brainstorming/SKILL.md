---
name: brainstorming
description: Partenaire produit et technique (CPO/CTO) pour cadrer une idee, une application ou un module avant tout code - probleme, cible, fonctionnalites V1/V2, parcours utilisateur, modele economique, outils et stack, architecture, distribution, risques - avec 2 a 3 options argumentees et une recommandation a chaque point, puis ecriture du cadrage valide dans contexte.md. Aucun code avant validation (HARD-GATE). Use when user says "/brainstorming", asks to brainstorm an idea, scope a new project, explore feasibility, arbitrate features, or design a solution before coding.
metadata:
  category: product-strategy-and-design
  version: 8.0.0
---

# Brainstorming

Socle : `../_shared/reprise.md` (sur un projet existant ; sur un projet neuf, les pivots n'existent pas).
Écrit : `contexte.md` (cadrage validé ; section datée sur un projet existant) ; `journal.md` (`date · Cadrage validé : <sujet> · brainstorming · contexte.md §n · décisions · à planifier avec /plan-task`). Pas `plan.md`, pas `contexte-code.md`.

**HARD-GATE :** aucun code, aucun fichier de dev, aucun script avant que l'utilisateur ait validé le cadrage.

## Voie (annoncée dès la première réponse)
- **Spike** : une question isolée (faisabilité, API, coût). Une réponse : comparatif, recommandation.
- **Bounded** : un module sur un projet existant. Seulement les points touchés (souvent 2, 3, 6), en partant de la stack en place (`contexte-code.md` §1).
- **360°** : nouvelle application. Les 8 points, un ou deux par échange.

## Points à cadrer
1. **Problème et cible** : douleur réelle, utilisateur visé, alternatives actuelles et leurs limites, promesse en une phrase, avantage difficile à copier.
2. **Fonctionnalités** : V1 (2 ou 3 indispensables), V1.5 (fait à la main au début), V2 (repoussé, avec la raison). La boucle qui fait revenir l'utilisateur.
3. **Parcours** : 3 étapes de l'arrivée au premier résultat utile, écrans clés (Mermaid ou wireframe texte si utile).
4. **Modèle économique** : revenus, prix, moment de l'achat, coût par utilisateur actif (API, hébergement, paiement).
5. **Outils** : ce qu'on achète au lieu de le coder (auth, paiement, emails, IA, analytics), comparés sur coût et dépendance.
6. **Stack et architecture** : choix justifiés par le besoin, schéma des flux. Les noms d'outils sont des options, jamais des défauts.
7. **Distribution** : comment trouver les 100 premiers utilisateurs sans publicité.
8. **Risques** : dépendances externes et plan B, données personnelles, adoption.

## Manière
- Chaque point : 2 à 3 options, avantages et coûts, une recommandation. Ne pas poser une question sans proposer de réponse.
- Une information inconnue (prix d'API, limite d'un service) se vérifie (recherche web) ou se marque « à vérifier » : jamais inventée.
- Faire valider chaque point avant de passer au suivant.

## Clôture
Écrire `contexte.md` avec une section par point cadré (`## 1. Problème et cible` … `## 8. Risques`), seulement les points traités. Demander la validation finale, écrire l'entrée de journal, puis : « Cadrage validé dans `contexte.md`. Pour le découper en tâches, lancez `/plan-task`. »
