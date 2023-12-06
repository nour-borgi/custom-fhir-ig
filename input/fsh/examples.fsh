Instance: PatientExample
InstanceOf: HivPatient
Description: "Example of Patient"
* name.family = "Smith"
* name.given[0] = "Holland"
* name.given[1] = "Michael"
* identifier[NID].value = "NID001"
* identifier[NID].system = "http://openhie.org/fhir/training-solution-1/identifier/nid"
* identifier[MR].value = "MR001"
* identifier[MR].system = "http://openhie.org/fhir/training-solution-1/identifier/mr"
* identifier[MR].type.coding.code = #MR
* identifier[MR].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[MR].type.coding.display = "Medical Record Number"
* identifier[MR].type.text = "Patient folder Number"
* telecom[+].system = #phone
* telecom[=].value = "555-555-5555"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "john.anyperson@example.com"
* gender = #male
* birthDate = "2022-07-07"
* address.line = "123 Main St"
* address.city = "Anytown"
* address.district = "District"
* address.postalCode = "12345"
* address.state = "State"
* address.country = "US"
* maritalStatus.coding.code = #M
* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.coding.display = "Married"
* maritalStatus.text = "A current marriage contract is active"
* managingOrganization = Reference(OrganizationExample)
* extension[KPS].valueCodeableConcept = $SCT#417284009
* extension[KPS].valueCodeableConcept.coding.display = "Current drug user"
* extension[KPS].valueCodeableConcept.text = "Current drug user"

Instance: OrganizationExample
InstanceOf: Organization
Description: "Example for Organization"
* id = "OrganizationExample"
* active = true
* name = "Facility"
* contact.telecom.system = #phone
* contact.telecom.value = "617-418-2200"
* address.line = "150 Second Street"
* address.city = "Cambridge"
* address.state = "MA"
* address.postalCode = "02141"
* address.country = "USA"

Instance: ExampleBundle
InstanceOf: Bundle
Usage: #example
Title: "ExampleBundle"
Description: "Example for Bundle"
* type = #transaction
* entry[+].fullUrl = "http://openhie.org/fhir/custom-fhir-ig/Patient/PatientExample"
* entry[=].request.url = "Patient/PatientExample"
* entry[=].request.method = #PUT
* entry[=].resource = PatientExample
