# Artifacts Summary - Guide d'implémentation Fr Core v2.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FR Core Location Profile](StructureDefinition-fr-core-location.md) | Ressource Location adaptée au contexte français. Cette ressource est utilisée pour représenter un lieu physique, telle qu’une salle d’examen, un lit d’hôpital ou une chambre d’hôpital. |
| [FR Core Organization Etablissement Profile](StructureDefinition-fr-core-organization-etablissement.md) | Profil de la ressource Organization permettant de représenter des établissements sanitaires et sociaux. |
| [FR Core Organization Profile](StructureDefinition-fr-core-organization.md) | Profil de la ressource Organization pour la France. Il s’agit du profil de base pour les organisations en France. |
| [FR Core Organization UAC Profile](StructureDefinition-fr-core-organization-uac.md) | Ce profil permet de représenter les unités d’activité (UAC, parfois appelé PAC). Le PAC ou l’UAC est le niveau élémentaire de recueil des activités en vue de la facturation. |
| [FR Core Organization UF Profile](StructureDefinition-fr-core-organization-uf.md) | Profil de la ressource Organization permettant de représenter les unités fonctionnelles en établissement. |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FR Core Address Profile](StructureDefinition-fr-core-address.md) | Profil du type de données Address pour la France, ce profil ajoute le code insee à l’adresse. Une cohérence entre code commune (COG), code postal et nom de commune doit être assurée. French profile of Address datatype |
| [FR Core Contact Point Profile](StructureDefinition-fr-core-contact-point.md) | Profil du type de données ContactPoint pour la France, ce profil ajoute le type d’e-mail tel que la bal mss. French profile of ContactPoint datatype |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FR Core Address Insee Code Extension](StructureDefinition-fr-core-address-insee-code.md) | Extension d’ajout du code insee (5 chiffres) à l’adresse postale. This extension adds the insee code (5 digits) to the address |
| [FR Core Contact Point Email Type Extension](StructureDefinition-fr-core-contact-point-email-type.md) | Extension permettant d’indiquer le type d’adresse email d’un ContactPoint. This extension allows to specify the type of mail used to contact the person. |
| [FR Core Location Extension - Position du lit](StructureDefinition-fr-core-location-position-lit.md) | Position du lit dans la chambre |
| [FR Core Location Extension - Type de chambre](StructureDefinition-fr-core-location-type-chambre.md) | Type de chambre |
| [FR Core Organization Description Extension](StructureDefinition-fr-core-organization-description.md) | Description textuelle d’une organisation |
| [FR Core Organization Extension - Catetgorie SAE](StructureDefinition-fr-core-organization-sae-category.md) | Categorie d’établissement de santé, suivant les valeurs de la SAE (Structure d’Activité d’Etablissement) |
| [FR Core Organization Extension - Champ d'activité](StructureDefinition-fr-core-organization-champ-activite.md) | Champ d’activité d’une UF |
| [FR Core Organization Extension - Demandeuse d'acte](StructureDefinition-fr-core-organization-demandeuse-acte.md) | Indicateur permettant de définir si une UF peut demander des actes |
| [FR Core Organization Extension - Discipline Prestation](StructureDefinition-fr-core-organization-discipline-prestation.md) | Discipline de prestation d’une UAC |
| [FR Core Organization Extension - Discipline d'équipement](StructureDefinition-fr-core-organization-discipline-equipement.md) | Discipline d’équipement |
| [FR Core Organization Extension - Exécutante d'acte](StructureDefinition-fr-core-organization-executante-acte.md) | Indicateur permettant de définir si une UF peut exécuter des actes |
| [FR Core Organization Extension - Indicateur d'une unité fonctionnelle](StructureDefinition-fr-core-organization-uf-indicateur.md) | Indicateur permettant de définir si une UF est d’hébergement, médicale, administrative ou de magasin. |
| [FR Core Organization Extension - Membre d'organisation](StructureDefinition-fr-core-organization-member.md) | Extension permettant de définir des membres d’une organisation. |
| [FR Core Organization Extension - Nombre total de places d'hébergement théoriques](StructureDefinition-fr-core-organization-place-hebergement-theorique.md) | Nombre total de places d’hébergement théoriques |
| [FR Core Organization Extension - Tarif Soin](StructureDefinition-fr-core-organization-tarif.md) | Tarif de soin associé à l’unité d’activité (UAC, parfois appelé PAC). Le PAC ou l’UAC est le niveau élémentaire de recueil des activités en vue de la facturation. Il est lié à une discipline de prestation et à un tarif (lié à la discipline de prestation). Le PAC ne sert qu’à la facturation du séjour. Il permet d’associer des tarifs de soins différents pour la prise en charge d’un patient. |
| [FR Core Organization Extension - Type d'activité](StructureDefinition-fr-core-organization-type-activite.md) | Type d’activité d’une UF |
| [FR Core Organization Extension - UF Externe](StructureDefinition-fr-core-organization-uf-externe.md) | Indicateur permettant de définir si une UF est externe à l’établissement |
| [FR Core Organization Raison Sociale Extension](StructureDefinition-fr-core-organization-raison-sociale.md) | Raison Sociale l’organisation |
| [FR Core Organization Short Name Extension](StructureDefinition-fr-core-organization-short-name.md) | Libellé court de l’organisation |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FR Core ValueSet Categorie SAE Etablissement](ValueSet-fr-core-vs-categorie-sae-etablissement.md) | Catégrorie d’établissement de santé, suivant les valeurs de la SAE (Structure d’Activité d’Etablissement) 2024 |
| [FR Core ValueSet Codes Tarifs - nomenclature TNJP](ValueSet-fr-core-vs-oragnization-code-tarif-tnjp.md) | Valeurs permettant de coder les codes tarif. |
| [FR Core ValueSet Email type](ValueSet-fr-core-vs-email-type.md) | The type of email |
| [FR Core ValueSet INSEE code](ValueSet-fr-core-vs-insee-code.md) | the French Address Insee Codes |
| [FR Core ValueSet Location Position Lit](ValueSet-fr-core-vs-location-position-lit.md) | Position du lit dans la chambre |
| [FR Core ValueSet Location Type Chambre](ValueSet-fr-core-vs-location-type-chambre.md) | Type de chambre |
| [FR Core ValueSet Location type](ValueSet-fr-core-vs-location-type.md) | Jeu de valeurs du rôle joué par un lieu. A role for a location |
| [FR Core ValueSet Organization Champ Activite - Champ d'activité clinique de l'organisation type UF](ValueSet-fr-core-vs-organization-champ-activite.md) | Champ d’activité d’une organisation type UF. |
| [FR Core ValueSet Organization Discipline d'Equipement - nomenclature SAE](ValueSet-fr-core-vs-organization-discipline-equipement.md) | Valeurs permettant de coder les disciplines d’équipement. |
| [FR Core ValueSet Organization Discipline de prestation - nomenclature SAE](ValueSet-fr-core-vs-discipline-prestation.md) | Valeurs permettant de coder les disciplines de prestation. |
| [FR Core ValueSet Organization Etablisement type](ValueSet-fr-core-vs-organization-etablissement-type.md) | Types d’organisation représentant des établissements. |
| [FR Core ValueSet Organization Type Activité - nomenclature SAE](ValueSet-fr-core-vs-oragnization-type-activite.md) | Valeurs permettant de coder les types d’activité. |
| [FR Core ValueSet Organization UAC type](ValueSet-fr-core-vs-organization-uac-type.md) | Types de structure représentant des unités d’activité. |
| [FR Core ValueSet Organization UF type](ValueSet-fr-core-vs-organization-uf-indicateur.md) | Indicateur d’une unité fonctionnelle. |
| [FR Core ValueSet Organization UF type](ValueSet-fr-core-vs-organization-uf-type.md) | Type de structure représentant des unités fonctionnelles. |
| [FR Core ValueSet Organization identifier type](ValueSet-fr-core-vs-organization-identifier-type.md) | A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (Organizations). |
| [FR Core ValueSet Organization type](ValueSet-fr-core-vs-organization-type.md) | Types de structures |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FR Core CodeSystem Champ Activite - Codes du champ d'activité](CodeSystem-fr-core-cs-champ-activite.md) | Champ d’activité clinique de l’organisation type UF, tel que cité dans les fiches pratiques de comptabilité analytique hospitalière, de la DGOS. |
| [FR Core CodeSystem Codes Tarifs - nomenclature TNJP](CodeSystem-fr-core-cs-code-tarif-tnjp.md) | La nomenclature des codes Tarif - Tarifs Nationaux Journaliers des Prestations |
| [FR Core CodeSystem Discipline d'Equipement - nomenclature SAE](CodeSystem-fr-core-cs-discipline-equipement.md) | La nomenclature de disciplines d’équipement est utilisée pour ventiler l’activité et le personnel entre les différentes disciplines de la section hôpital (MCO, PSY, HAD, SMR et SLD) et la discipline ‘administration, services hôteliers et techniques’. La nomenclature des disciplines d’équipement s’applique aux unités fonctionnelles et aux sections issues du fichier de structure des établissements. Les disciplines sociales, médico-sociales et de formation n’apparaissent pas, car elles ne font pas partie du champ de la SAE. |
| [FR Core CodeSystem Discipline de prestation - nomenclature SAE](CodeSystem-fr-core-cs-discipline-prestation.md) | La nomenclature des discipline de prestation. |
| [FR Core CodeSystem Location Type](CodeSystem-fr-core-cs-location-type.md) | Location type |
| [FR Core CodeSystem Position du lit](CodeSystem-fr-core-cs-location-position-lit.md) | Position du lit dans la chambre |
| [FR Core CodeSystem Type Chambre](CodeSystem-fr-core-cs-location-type-chambre.md) | Type de chambre |
| [FR Core CodeSystem Type d'activité - nomenclature SAE](CodeSystem-fr-core-cs-type-activite.md) | La nomenclature des types d’activité. |
| [FR Core CodeSystem UF Indicator - indicateur d'une unité fonctionnelle](CodeSystem-fr-core-cs-uf-indicateur.md) | Système de codage permettant de définir les indicateurs d’une unité fonctionnelle. |
| [FR Core CodeSystem v2-3307](CodeSystem-fr-core-cs-v2-3307.md) | HL7 v2 - Table 3307 |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| |
| :--- |
| [hopitaltest-dept-11003-endocrino](Organization-hopitaltest-dept-11003-endocrino.md) |
| [hopitaltest-eg-4-members](Organization-hopitaltest-eg-4-members.md) |
| [hopitaltest-ej-350005179](Organization-hopitaltest-ej-350005179.md) |
| [hopitaltest-pole-1150-med-spe](Organization-hopitaltest-pole-1150-med-spe.md) |
| [hopitaltest-service-11006-endocrino-diabo](Organization-hopitaltest-service-11006-endocrino-diabo.md) |
| [hopitaltest-service-11007-dietetique](Organization-hopitaltest-service-11007-dietetique.md) |
| [hopitaltest-uac-4420-uac-01](Organization-hopitaltest-uac-4420-uac-01.md) |
| [hopitaltest-uac-4420-uac-02](Organization-hopitaltest-uac-4420-uac-02.md) |
| [hopitaltest-uf-4420-dialyse](Organization-hopitaltest-uf-4420-dialyse.md) |
| [hopitaltest-uf-4701-endocrino-diab](Organization-hopitaltest-uf-4701-endocrino-diab.md) |
| [hopitaltest-uf-4705-nutrition](Organization-hopitaltest-uf-4705-nutrition.md) |

