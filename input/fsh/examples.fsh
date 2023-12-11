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

Instance: EthPatientExample
InstanceOf: EthPatient
Usage: #example
Title: "Eth Patient Example"
Description: "Eth Patient Example"

* identifier[MRN].value = "MRN1234567"
* identifier[MRN].system = $MRN
* identifier[MRN].type.coding.code = #MR
* identifier[MRN].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[MRN].type.coding.display = "Medical record number"
* identifier[MRN].type.text = "Medical record number"
* identifier[UAN].value = "UAN1234567"
* identifier[UAN].system = $UAN
* identifier[SmartCareID].value = "NID1234567"
* identifier[SmartCareID].system = $SmartCareID
* gender = #female
* birthDate = "2000-11-11"
* address.city = "Addis Ababa"
* address.line[0] = "123"
* address.line[1] = "Tesfaye Street"
* address.line[2] = "Bole"
* address.district = "Addis Ababa Central District"
* address.state = "Addis Ababa"
* managingOrganization = Reference(EthOrganizationExample)

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

Instance: EthEncounterExample
InstanceOf: EthEncounterProfile
Usage: #example
Description: "Example for Encounter of FHIR IG"
* class.code = #OBSENC
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.display = "observation encounter"
* status = #finished
* identifier[FOLLOWUP].value = "001"
* identifier[FOLLOWUP].system = $ENCOUNTER
* subject = Reference(PatientExample)
* type.text = "Follow-up encounter"
* type.coding.display = "Follow-up encounter"
* type.coding.code = #390906007
* type.coding.system = $SCT
* period.start = "2012-12-09"
* period.end = "2012-12-09"
* extension[NV].valueDateTime = "2013-01-15"
* extension[NV].url = $NEXT_VISIT
* extension[VT].valueString = "Unscheduled"
* extension[VT].url = $VISIT_TYPE

Instance: EthMedicationDispenseExample
InstanceOf: EthMedicationDispense
Usage: #example
Description: "Example for Medication Dispense of FHIR IG"
* status = #completed
* statusReasonCodeableConcept.text = "Alive On ART"
* statusReasonCodeableConcept.coding.code = #alive-on-art
* statusReasonCodeableConcept.coding.system = $FOLLOWUP_STATUS
* medicationCodeableConcept.text = "1j (TDF + 3TC + DTG)"
* medicationCodeableConcept.coding.code = #1j
* medicationCodeableConcept.coding.display = "TDF + 3TC + DTG"
* medicationCodeableConcept.coding.system = $REGIMEN_CODES
* subject = Reference(EthPatientExample)
* context = Reference(EthEncounterExample)
* quantity.code = #{tbl} 
* quantity.unit = "{tbl}"
* quantity.value = 90
* quantity.system = $UNIT
* daysSupply.code = #d
* daysSupply.unit = "days"
* daysSupply.value = 90
* daysSupply.system = $UNIT
* extension[DED].valueDateTime = "2024-04-03"
