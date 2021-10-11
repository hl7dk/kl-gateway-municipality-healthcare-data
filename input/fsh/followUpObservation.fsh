Alias: $SnomedCT = http://snomed.info/sct

Profile: KLGatewayCareFollowUpObservation
Parent: Observation
Id: klgateway-care-follow-up-observation
Title: "CareFollowUpObservation"
Description: "Structured result or outcome of a follow up."
* identifier ..0
* basedOn ..0
* partOf ..0
* category ..0
* status ^definition = "The status of the result value. Shall be final or entered-in-error."
* code.coding 1..1
* code.coding = $SnomedCT#712744002
* subject only Reference(klgateway-care-citizen)
* subject ^type.aggregation = #bundled
* focus 1..
* focus only Reference(KLGatewayCareCondition or KLGatewayCarePlannedIntervention) 
* encounter 0..0
* effective[x] 1..1
* effective[x] only dateTime
* issued ..0
* performer ..0
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from http://kl.dk/fhir/common/caresocial/ValueSet/KLFollowUpCodesFSIII
* dataAbsentReason ..0
* interpretation ..0
* note ..0
* bodySite ..0
* method ..0
* specimen ..0
* device ..0
* referenceRange ..0
* hasMember 0..0
* derivedFrom ..0
* component ..0
* obeys gateway-care-follow-up-1

//Danish descriptions
* subject ^short = "[DK] opfølgningsubjekt"
* effective[x] ^short = "[DK] opfølgningstid"
* status ^short = "[DK] opfølgningsstatus"

Invariant: gateway-care-follow-up-1
Description: "A follow-up observation resource shall have status final or entered-in-error"
Severity: #error
Expression: "status = 'final' or status = 'entered-in-error'"


Instance: PersonligPlejeFortsaettes
InstanceOf: KLGatewayCareFollowUpObservation
Description: "Follow-up observation documenting that focus on personal care should be continued for the test person"
* status = #final
* code = $SnomedCT#712744002
* subject = Reference(TestPerson)
* focus = Reference(ProblemerMedPersonligPleje)
* effectiveDateTime = 2020-08-14
* valueCodeableConcept = $KLTerminology#E1

Instance: DialyseFortsaettes
InstanceOf: KLGatewayCareFollowUpObservation
Description: "Follow-up observation documenting that the planned intervention on dialysis should be continued for the test person"
* status = #final
* code = $SnomedCT#712744002
* subject = Reference(TestPerson)
* focus = Reference(Dialyse)
* effectiveDateTime = 2020-08-14
* valueCodeableConcept = $KLTerminology#E1
