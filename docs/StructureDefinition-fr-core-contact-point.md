# FR Core Contact Point Profile - Guide d'implémentation Fr Core v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Core Contact Point Profile**

## Data Type Profile: FR Core Contact Point Profile 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point | *Version*:2.1.0 |
| Active as of 2025-11-02 | *Computable Name*:FRCoreContactPointProfile |

 
Profil du type de données ContactPoint pour la France, ce profil ajoute le type d’e-mail tel que la bal mss. French profile of ContactPoint datatype 

**Usages:**

* Use this DataType Profile: [FR Core Organization Profile](StructureDefinition-fr-core-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.core|current/StructureDefinition/fr-core-contact-point)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-core-contact-point.csv), [Excel](StructureDefinition-fr-core-contact-point.xlsx), [Schematron](StructureDefinition-fr-core-contact-point.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-contact-point",
  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point",
  "version" : "2.1.0",
  "name" : "FRCoreContactPointProfile",
  "title" : "FR Core Contact Point Profile",
  "status" : "active",
  "date" : "2025-11-02T18:22:16+01:00",
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
  "description" : "Profil du type de données ContactPoint pour la France, ce profil ajoute le type d'e-mail tel que la bal mss.\r\nFrench profile of ContactPoint datatype",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "ContactPoint",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ContactPoint",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ContactPoint",
        "path" : "ContactPoint"
      },
      {
        "id" : "ContactPoint.extension:emailType",
        "path" : "ContactPoint.extension",
        "sliceName" : "emailType",
        "short" : "Champs permettant de préciser le type d'email (MSSANTE | APICRYPT | OSM | AutreMessagerie) dont il est question dans le cas où le point de contact est un email.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type"
            ]
          }
        ]
      },
      {
        "id" : "ContactPoint.system",
        "path" : "ContactPoint.system",
        "min" : 1
      },
      {
        "id" : "ContactPoint.value",
        "path" : "ContactPoint.value",
        "min" : 1
      }
    ]
  }
}

```
