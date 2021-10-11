__Note__ this implementation guide is restricted to helthcare data only.

This implementation guide describes the content of the reporting of healthcare data from KL Gateway to other authorities at a national level, i.e. Sundhedsdatastyrelsen (SDS). This implementation guide defines the profiles of the resources that one can receive from the gateway provided that one is only allowed to receive healtcare data and not care data according to "serviceloven".

The profiles are based on the reporting from the municipalities defined by the KL Gateway implementation guide found here: [KL Gateway Implementation Guide](http://build.fhir.org/ig/hl7dk/kl-gateway), which describes the details of the content futher.

The intended use of the implemention guide is either to use a RESTful API directly to receive the changes since a given point in time (last time asked) or receive push messages of changes in the format defined by the CareIncrementalDelivery profile in this this implementation guide. See [CareIncrementalDelivery](StructureDefinition-klgateway-care-incremental-delivery.html) and the [TestIncrementalDelivery](Bundle-TestIncrementalDelivery.html) example.

In case the data is pushed to the recipient, the frequency, grouping, and maximal number of results per page are agreed between the KL Gateway organization and the recipient.

Comparison of the kl-gateway/kl-gateway-municipality-care-data implementation guides and this guide:

Changes made to this implementation guide
- CareCitizensOwnObservation profile is not included
- CareGoal profile is not included
- CareCondition.code only allows nursing conditions
- CareCondition.severity is not allowed
- CareCompletedIntervention.code only allows nursing interventions
- CarePlannedInterventions.activity.detail.code only allows nursing interventions  
- CareMatterOfInterestObservation.code only allows nursing areas
- CareMatterOfInterestObservation.contextAtRisk only allows nursing conditions
