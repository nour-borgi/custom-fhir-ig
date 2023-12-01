Instance: PatientExample
InstanceOf: Patient
Description: "Example of Patient"
* name.family = "Smith"
* name.given[0] = "Holland"
* name.given[1] = "Michael"
// The first element [0] can also be represented as [+] if it is not preceded by any hard index
* contact.telecom[+].system = #phone
* contact.telecom[=].value = "555-555-5555"
* contact.telecom[=].use = #home
* contact.telecom[+].system = #email
* contact.telecom[=].value = "john.anyperson@example.com"

* gender = #male

* birthDate = "2022-07-07"

* address.line = "123 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"
