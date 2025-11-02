# hopitaltest-endocrino-ch04 - Guide d'implémentation Fr Core v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **hopitaltest-endocrino-ch04**

## Example Location: hopitaltest-endocrino-ch04

Profil: [FR Core Location Profile](StructureDefinition-fr-core-location.md)

**name**: Chambre 04

**type**: Chambre

**partOf**: [Organization UF Endocrino Diabeto](Organization-hopitaltest-uf-4701-endocrino-diab.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "hopitaltest-endocrino-ch04",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"
    ]
  },
  "name" : "Chambre 04",
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-type",
          "code" : "CHAMB",
          "display" : "Chambre"
        }
      ],
      "text" : "Chambre"
    }
  ],
  "partOf" : {
    "reference" : "Organization/hopitaltest-uf-4701-endocrino-diab"
  }
}

```
