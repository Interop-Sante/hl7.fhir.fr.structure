Instance: hopitaltest-dept-11003-endocrino-list
InstanceOf: FRCoreOrganizationProfileL
Usage: #example

* extension[member].url = "http://example.org/fhir/StructureDefinition/organization-member-list"
* extension[member].valueReference = Reference(List/hopitaltest-dept-11003-endocrino-uf-list)

* identifier.use = #official
* identifier.system = "http://hopitalTest.fr/namingsystem/organization"
* identifier.value = "11003"
* type = $fr-core-v2-3307#DEPARTEMENT "Departement"
* type.text = "DEPARTEMENT"
* name = "Departement d'Endocrinologie"
