Instance: hopitaltest-dept-11003-endocrino-list-contained
InstanceOf: FRCoreOrganizationProfileL
Usage: #example

* extension[member].url = "http://example.org/fhir/StructureDefinition/organization-member-list"
* extension[member].valueReference.reference = "#dept-11003-members"

* identifier.use = #official
* identifier.system = "http://hopitalTest.fr/namingsystem/organization"
* identifier.value = "11003"
* type = $fr-core-v2-3307#DEPARTEMENT "Departement"
* type.text = "DEPARTEMENT"
* name = "Departement d'Endocrinologie"

* contained[+].resourceType = "List"
* contained[=].id = "dept-11003-members"
* contained[=].meta.profile = "http://example.org/fhir/StructureDefinition/fr-list-organization-members"
* contained[=].status = #current
* contained[=].mode = #working
* contained[=].title = "UF composant du département d'Endocrinologie"
* contained[=].entry[0].item.reference = "Organization/hopitaltest-uf-4701-endocrino-diab"
* contained[=].entry[1].item.reference = "Organization/hopitaltest-uf-4705-nutrition"
