Profile: PCTPractitioner
Parent: $USCorePractitioner
Id: davinci-pct-practitioner
Title: "PCT Practitioner"
Description: "The PCT Practitioner profile builds upon the US Core Practitioner profile. It is used to convey information about the practitioner who will be providing services to the patient as described on the GFE."

// * identifier ^slicing.discriminator.path = "type"
// * identifier ^slicing.rules = #open
// * identifier ^slicing.discriminator.type = #pattern
// * identifier ^slicing.ordered = false   // can be omitted, since false is the default
// * identifier ^slicing.description = "Slice based on $this pattern"

* identifier contains ETIN 0..1 MS
* identifier[ETIN] ^patternIdentifier.type = PCTOrgIdentifierTypeCS#ETIN "Electronic Transmitter Identification Number"
* identifier[ETIN].value 1..1 MS
* identifier[ETIN] ^short = "The submitter's Electronic Transmitter Identification Number."

//* identifier contains NPI 0..1 MS
* identifier[NPI] 0..1 MS
* identifier[NPI] ^patternIdentifier.type  = $V2-0203#NPI "National provider identifier"
* identifier[NPI].value 1..1 MS
* identifier[NPI] ^short = "The National Provider Identifier assigned to the provider."

* name.given 1..1 MS

//TODO: add slices for phone and email
* telecom MS