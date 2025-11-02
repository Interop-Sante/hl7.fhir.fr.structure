# FR Core CodeSystem UF Indicator - indicateur d'une unité fonctionnelle - Guide d'implémentation Fr Core v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core CodeSystem UF Indicator - indicateur d'une unité fonctionnelle**

## CodeSystem: FR Core CodeSystem UF Indicator - indicateur d'une unité fonctionnelle 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-uf-indicateur | *Version*:2.1.0 |
| Draft as of 2025-11-02 | *Computable Name*:FRCoreCodeSystemUFIndicateur |

 
Système de codage permettant de définir les indicateurs d’une unité fonctionnelle. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRCoreValueSetOrganizationUFIndicateur](ValueSet-fr-core-vs-organization-uf-indicateur.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-core-cs-uf-indicateur",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-uf-indicateur",
  "version" : "2.1.0",
  "name" : "FRCoreCodeSystemUFIndicateur",
  "title" : "FR Core CodeSystem UF Indicator - indicateur d'une unité fonctionnelle",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-11-02T16:31:57+01:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    },
    {
      "name" : "InteropSanté",
      "telecom" : [
        {
          "system" : "email",
          "value" : "fhir@interopsante.org",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Système de codage permettant de définir les indicateurs d'une unité fonctionnelle.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "France"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "HEB",
      "display" : "Hébergement"
    },
    {
      "code" : "SOIN",
      "display" : "Soin"
    },
    {
      "code" : "ADMIN",
      "display" : "Administrative"
    },
    {
      "code" : "MED",
      "display" : "Médicale"
    },
    {
      "code" : "TECH",
      "display" : "Technique"
    },
    {
      "code" : "MEDICOTECH",
      "display" : "medico technique (radio, scanner, ...)"
    },
    {
      "code" : "MAG",
      "display" : "Magasin"
    }
  ]
}

```
