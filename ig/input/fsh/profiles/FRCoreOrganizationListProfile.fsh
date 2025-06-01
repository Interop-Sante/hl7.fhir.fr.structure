Profile: FRCoreOrganizationListProfile
Parent: List
Id: fr-core-organization-list
Title: "FR Core Organization Profile"
Description: """Profil de la ressource Organization pour la France. Il s'agit du profil de base pour les organisations en France."""
//* ^purpose = """"""

* ^version = "1.0.0"
* ^status = #active
* ^kind = #resource
* ^fhirVersion = #4.0.1
* ^abstract = false

* entry.item only Reference(FRCoreOrganizationProfile or FRCoreOrganizationEtablissementProfile or FRCoreOrganizationUACProfile or FRCoreOrganizationUFProfile)