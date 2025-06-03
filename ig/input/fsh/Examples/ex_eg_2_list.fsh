Instance: hopitaltest-eg-list
InstanceOf: FRCoreOrganizationEtablissementProfileL
Usage: #example

* extension[sae].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-sae-category"
* extension[sae].valueCodeableConcept.coding[0] = $TRE-R66-CategorieEtablissement#101 "Centre hospitalier régional (CHR)"
* extension[raisonSociale].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-raison-sociale"
* extension[raisonSociale].valueString = "CHRU CENTRE VILLE"

* identifier[0].type = $fr-core-v2-0203#FINEG "FINESS d'entité géographique"
* identifier[=].system = "https://finess.esante.gouv.fr"
* identifier[=].value = "350009999"
* identifier[=].use = #official

* identifier[+].type = $fr-core-v2-0203#SIREN "Identification de l'organisation au SIREN"
* identifier[=].system = "https://sirene.fr"
* identifier[=].value = "26350007609999"
* identifier[=].use = #official


* type = $fr-core-v2-3307#LEGAL-ENTITY "Entité légale"
* type.text = "Etablissement Géographique"
* name = "CHRU CENTRE VILLE"

* contained[+].resourceType = "List"
* contained[=].id = "eg-uf-members"
* contained[=].meta.profile = "http://example.org/fhir/StructureDefinition/fr-list-organization-members"
* contained[=].status = #current
* contained[=].mode = #working
* contained[=].title = "UF composant de l'établissement géographique"
* contained[=].entry[0].item.reference = "Organization/hopitaltest-uf-4701-endocrino-diab"
* contained[=].entry[1].item.reference = "Organization/hopitaltest-uf-4705-nutrition"

* contained[+].resourceType = "List"
* contained[=].id = "eg-svc-members"
* contained[=].meta.profile = "http://example.org/fhir/StructureDefinition/fr-list-organization-members"
* contained[=].status = #current
* contained[=].mode = #working
* contained[=].title = "Services composant de l'établissement géographique"
* contained[=].entry[0].item.reference = "Organization/hopitaltest-service-11006-endocrino-diabo"
* contained[=].entry[1].item.reference = "Organization/hopitaltest-service-11007-dietetique"
