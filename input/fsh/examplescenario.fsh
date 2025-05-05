Instance: phoenix-example-instance-1
InstanceOf: ExampleScenario
Usage: #example

* status = #draft
* version = "0.1.0"
* name = "Phoenix ExampleScenario for study inclusion"
* date = "2025-04-11"
* publisher = "PHOENIX, a HL7 Europe Ininitiative"
* actor[+].actorId = "Patient"
* actor[=].type = #person
* actor[=].name = "Patient Surname"
* actor[+].actorId = "Physician"
* actor[=].type = #person
* actor[=].name = "Treating Doctor Surname"
* instance[+].resourceId = "phoenix-Patient1"
* instance[=].resourceType = #Patient
* instance[+].resourceId = "phoenix-Practicioner1"
* instance[=].resourceType = #Practicioner

* instance[+].resourceId = "phoenix-Patient1-Condition1"
* instance[=].resourceType = #Condition

* instance[+].resourceId = "phoenix-Patient1-Observation1-UICC-Stage"
* instance[=].resourceType = #Observation

* instance[+].resourceId = "phoenix-Patient1-Observation2-ECOG"
* instance[=].resourceType = #Observation

* instance[+].resourceId = "phoenix-Patient1-ServiceRequest1-Surgery"
* instance[=].resourceType = #Procedure

* instance[+].resourceId = "phoenix-Patient1-ResearchStudy1"
* instance[=].resourceType = #ResearchStudy

* instance[+].resourceId = "phoenix-Patient1-Medcation1"
* instance[=].resourceType = #Medication

* instance[+].resourceId = "phoenix-Patient1-ServiceRequest1-Study-Inclusion"
* instance[=].resourceType = #ServiceRequest



* process[+].title = "Potential Study Inclusion" 
* process[=].description = "Patient is being evaluated for potential inclusion in a clinical study."
* process[=].step[+].operation.name = "Patient data is updated afer follow-up and first visit and diagnostic"
* process[=].step[=].operation.number = "1"



Instance: phoenix-Patient1
InstanceOf: Patient

Instance: phoenix-Practicioner11
InstanceOf: Practitioner

Instance: phoenix-Patient1-Condition1
InstanceOf: Condition
* subject = Reference(phoenix-Patient1)

Instance: phoenix-Patient1-Observation1-UICC-Stage
InstanceOf: Observation
* status = #final
* subject = Reference(phoenix-Patient1)
* focus = Reference(phoenix-Patient1-Condition1)
* code.text = "Ha!UICC"



Instance: phoenix-Patient1-Observation2-ECOG
InstanceOf: Observation
* status = #final
* subject = Reference(phoenix-Patient1)
* focus = Reference(phoenix-Patient1-Condition1)
* code.text = "Ha!ECOG"


Instance: phoenix-Patient1-ServiceRequest1-Surgery
InstanceOf: ServiceRequest
* status = #completed
* intent = #order
* subject = Reference(phoenix-Patient1)


Instance: phoenix-Patient1-ResearchStudy1
InstanceOf: ResearchStudy
* status = #active

Instance: phoenix-Patient1-Medication1
InstanceOf: Medication

Instance: phoenix-Patient1-ServiceRequest1-Study-Inclusion
InstanceOf: ServiceRequest
* subject = Reference(phoenix-Patient1)
* status = #active
* intent = #proposal


