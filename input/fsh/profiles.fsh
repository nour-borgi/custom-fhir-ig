Profile: HivPatient
Parent: Patient
Id: hiv-patient
Title: "hiv-patient"
Description: "Hiv Patient profile for practive"
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "slicing based on the type of identifier"
* identifier ^slicing.ordered = false
* identifier contains
    NID 0..1 and
    MR 1..1
* identifier[NID].value 1..1
* identifier[NID].system = "http://openhie.org/fhir/training-solution-1/identifier/nid" (exactly)
* identifier[MR].value 1..1
* identifier[MR].system = "http://openhie.org/fhir/training-solution-1/identifier/mr"
* identifier[MR].type.coding.code = #MR
* identifier[MR].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[MR].type.coding.display = "Medical Record Number"
* identifier[MR].type.text = "Patient folder Number"
* name 1..*
* name.family 1..1
* name.given 1..*
* gender 1..1
* birthDate 1..1
* maritalStatus 1..1
* telecom 0..* MS
* telecom ^definition = "telecom must be supported"
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.ordered = false
* telecom ^slicing.description = "Slice based on the type of telecom system."
* telecom contains 
    email 0..1 and
    phone 0..1
* telecom[email].value 1..1
* telecom[email].system = #email
* telecom[phone].value 1..1
* telecom[phone].system  = #phone
* address 0..* MS
* address ^definition = "address must be supported"
* address.city 1..1
* address.district 1..1
* address.state 1..1
* address.country 1..1
* contact 0..* MS
* contact ^definition = "contact must be supported"
* contact.name.given 1..*
* contact.name.family 1..1
* contact.telecom 0..* MS
* contact.telecom ^definition = "contact.telecom must be supported"
* contact.relationship 1..1
* managingOrganization 1..1
* extension contains ClientKeyPopulationExtension named KPS 0..1 MS
* extension[KPS] ^definition = "Definition of Client Key Population"

Extension: ClientKeyPopulationExtension
Id: client-key-population-extension
Title: "ClientKeyPopulationExtension"
Description: "This is an extension of the Client Key Population Extension"
* value[x] only CodeableConcept
* valueCodeableConcept from ClientKeyPopulationValues (required)
* ^context[0].type = #element
* ^context[0].expression = "Patient"
