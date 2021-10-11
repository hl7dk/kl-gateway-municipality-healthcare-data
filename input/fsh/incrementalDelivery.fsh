Profile: KLGatewayCareIncrementatalDelivery
Parent: Bundle
Id: klgateway-care-incremental-delivery
Title: "CareIncrementalDelivery"
Description: "Delivery for all delivery reports made since last update (unordered)."
* identifier ..0
* type = #collection
* timestamp 1..1
* total ..0
* link ..0
* entry.resource 1..1
* entry.resource only
    KLGatewayCareDeliveryReport
* entry.resource ^short = "Content constrained to known delivery reports"
* entry.search ..0
* entry.request ..0
* entry.response ..0
* signature ..0

Instance: TestIncrementalDelivery
InstanceOf: KLGatewayCareIncrementatalDelivery
Description: "Example of an incremental delivery with one delivery report"
* type = #collection
* timestamp = 2020-08-14T00:00:00Z
* entry[+].fullUrl = "Bundle/TestPersonReport"
* entry[=].resource = TestPersonReport
