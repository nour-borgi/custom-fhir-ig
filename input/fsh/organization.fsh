Profile: EthOrganizationProfile
Parent: Organization
Id: eth-organization
Title: "EthOrganizationProfile"
Description: "Organization Profile of Ethiopia FHIR IG"
* active 1..1
* name 1..1
* type 0..*
* address 1..1
* address.state 1..1
* address.city 1..1
* address.district 0..1
* address.line 0..*
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing the organization identifiers based on the system value (MohId or HFUID)"
* identifier ^slicing.ordered = false
* identifier contains
    MOHID 1..1 and
    HFUID 1..1
* identifier[MOHID].value 1..1
* identifier[MOHID].system = $MOHID (exactly)
* identifier[HFUID].value 1..1
* identifier[HFUID].system = $HFUID (exactly)


Instance: EthOrganizationExample
InstanceOf: EthOrganizationProfile
Description: "Example for Organization of Ethiopia FHIR IG"
* active = true
* name = "Meshwalkiya Health Center"
* address.line[0] = "Meshulekia"
* address.city = "Kirkos"
* address.state = "Addis Ababa"
* address.district = "Kirkos woreda 9"
* identifier[MOHID].value = "MOHID001"
* identifier[MOHID].system = $MOHID
* identifier[HFUID].value = "HFUID001"
* identifier[HFUID].system = $HFUID
