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

Profile: EthEncounterProfile
Parent: Encounter
Id: eth-encounter
Title: "Encounter Profile"
Description: "Encounter Profile to record one follow up for the FHIR IG"
* class 1..1
* status 1..1
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing the Encounter identifiers based on the system value"
* identifier ^slicing.ordered = false
* identifier contains
    FOLLOWUP 1..1
* identifier[FOLLOWUP].value 1..1
* identifier[FOLLOWUP].system = $ENCOUNTER (exactly)
* subject 1..1 
* subject only Reference(Patient)
* type 1..1
* type = $SCT#390906007
* period 1..1
* period.start 1..1
* period.end 0..1
* extension contains EncounterNextVisitExtension named NV 0..1 MS
* extension[NV] ^definition = "Next encounter visit date"
* extension contains EncounterVisitTypeExtension named VT 0..1 MS
* extension[VT] ^definition = "Encounter visit type"

Extension: EncounterNextVisitExtension
Id: encounter-next-visit
Title: "Encounter Next Visit Extension"
Description: "This is an extension of the Encounter next visit date"
* ^url = $NEXT_VISIT 
* value[x] only dateTime
* valueDateTime 1..1
* ^context[0].type = #element
* ^context[0].expression = "Encounter"
    
Extension: EncounterVisitTypeExtension
Id: encounter-visit-type
Title: "Encounter Visit Type Extension"
Description: "This is an extension of the Encounter visit type"
* ^url = $VISIT_TYPE
* value[x] only string
* valueString 1..1
* ^context[0].type = #element
* ^context[0].expression = "Encounter"

Profile: EthMedicationDispense
Parent: MedicationDispense
Id: eth-medication-dispense
Title: "Medication Dispense Profile"
Description: "Medication Dispense Profile to record follow up status and arv drugs for the FHIR IG"
* status 1..1
* medication[x] only CodeableConcept
* statusReasonCodeableConcept 0..1 MS
* statusReasonCodeableConcept ^definition = "reason(s) why this should be supported."
* statusReasonCodeableConcept.coding.code 1..1
* statusReasonCodeableConcept.coding.code from FollowUpStatusValueSet (extensible)
* statusReasonCodeableConcept.coding.system 1..1
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1 MS
* medicationCodeableConcept ^definition = "reason(s) why this should be supported."
* medicationCodeableConcept.coding.code 1..1 
* medicationCodeableConcept.coding.code from DispenseCodesValueSet (extensible)
* medicationCodeableConcept.coding.system 1..1
* subject 1..1 
* subject only Reference(Patient)
* context 1..1 
* context only Reference(Encounter)
* quantity 0..1 MS
* quantity ^definition = "reason(s) why this should be supported."
* quantity.value 1..1
* quantity.system 1..1
* daysSupply.system = $UNIT
* quantity.code 1..1
* daysSupply 0..1 MS
* daysSupply ^definition = "reason(s) why this should be supported."
* daysSupply.value 1..1
* daysSupply.system 1..1
* daysSupply.system = $UNIT
* daysSupply.code 1..1
* extension contains MedicationDispenseDoseEndDateExtension named DED 0..1 MS
* extension[DED] ^definition = "reason(s) why this should be supported."

Extension: MedicationDispenseDoseEndDateExtension
Id: arv-dose-end-date
Title: "Medication Dispense Dose End Date Extension"
Description: "This is an extension of the medication dispense to capture the dose end date of the arv drugs"
* ^url = $DOSE_END_DATE
* value[x] only dateTime
* valueDateTime 1..1
* ^context[0].type = #element
* ^context[0].expression = "MedicationDispense"
