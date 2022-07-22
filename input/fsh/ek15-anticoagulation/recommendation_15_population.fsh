/**************/
/* Population */
/**************/
Instance: PopHospitalisedCOVID19PatientsWOVenousThrombosisWOCI
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Hospitalised COVID-19 patients without (venous) thrombosis and without contraindications to LWMH"
Description: "Population for recommendation 15: Hospitalised COVID-19 patients without (venous) thrombosis and without contraindications to LWMH"
* name = "HospitalisedCOVID19PatientsWOVenousThrombosisWOCI"
* actual = false
* identifier.value = "WOThrombosisWOCI"
* identifier.system = $ceosys
* status = #active
* name = "COVID19_patients_without_venous_thrombosis_without_contraindications"
* description = "Population for guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: COVID-19 patients without (venous) thrombosis and without contraindications to LWMH"
* url = "https://www.ceosys.de/fhir/population/Population_Hospitalised_COVID19_WO_Thrombosis_WO_Highrisk" // TODO unique URL
* characteristic[condition][+]
  * linkId = "covid19"
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
* characteristic[condition][=].exclude = false
* characteristic[condition][+] // Exclude patients with Thrombosis
  * linkId = "venous-thrombosis"
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#111293003 "Venous Thrombosis"
* characteristic[condition][=].exclude = true
* characteristic[2].definitionByCombination // Exclude patients with any of the following contraindications
  * code = #any-of
  * characteristic[condition][+]
    * linkId = "hit2"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#111588002 "Heparin-induced thrombocytopenia with thrombosis (disorder)"
  * characteristic[condition][=].exclude = false
  * characteristic[condition][+]
    * linkId = "heparin-allergy"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#294872001 "Allergy to heparin (finding)"
  * characteristic[condition][=].exclude = false
  * characteristic[condition][+]
    * linkId = "heparinoid-allergy"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#294876003 "Allergy to heparinoid (finding)"
  * characteristic[condition][=].exclude = false
  * characteristic[condition][+]
    * linkId = "thrombocytopenia"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#302215000 "Thrombocytopenic disorder (disorder)"
  * characteristic[condition][=].exclude = false
* characteristic[=].exclude = true


Instance: PopHospitalisedCOVID19PatientsWOVenousThrombosisWITHCI
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Hospitalised COVID-19 patients without (venous) thrombosis, existing contraindications to LWMH"
Description: "Population for recommendation 15: Hospitalised COVID-19 patients without (venous) thrombosis, existing contraindications to LWMH"
* name = "HospitalisedCOVID19PatientsWOVenousThrombosisWITHCI"
* actual = false
* identifier.value = "WOThrombosisWITHCI"
* identifier.system = $ceosys
* status = #active
* name = "COVID19_patients_without_venous_thrombosis_with_contraindications"
* description = "Population for guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: COVID-19 patients without (venous) thrombosis, existing contraindications to LWMH"
* url = "https://www.ceosys.de/fhir/population/Population_Hospitalised_COVID19_WO_Thrombosis_WO_Highrisk" // TODO unique URL!
// Include COVID-19 patients without thrombosis
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[condition][+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
  * characteristic[condition][=].exclude = false
  * characteristic[condition][+]
    * linkId = "venous-thrombosis"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#111293003 "Venous thrombosis (disorder)"
  * characteristic[condition][=].exclude = true
* characteristic[=].exclude = false
// exclude patients with the following contraindications
* characteristic[+].definitionByCombination
  * code = #any-of
  * characteristic[condition][+]
    * linkId = "hit2"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#111588002 "Heparin-induced thrombocytopenia with thrombosis (disorder)"
  * characteristic[condition][=].exclude = false
  * characteristic[condition][+]
    * linkId = "heparin-allergy"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#294872001 "Allergy to heparin (finding)"
  * characteristic[condition][=].exclude = false
  * characteristic[condition][+]
    * linkId = "heparinoid-allergy"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#294876003 "Allergy to heparinoid (finding)"
  * characteristic[condition][=].exclude = false
  * characteristic[condition][+]
    * linkId = "thrombocytopenia"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#302215000 "Thrombocytopenic disorder (disorder)"
  * characteristic[condition][=].exclude = false
* characteristic[=].exclude = false

Instance: PopHospitalisedCOVID19PatientsWITHThrombosis
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Hospitalised COVID-19 Patients with (venous) thrombosis"
Description: "Population for recommendation 15: Hospitalised COVID-19 Patients with (venous) thrombosis"
* name = "HospitalisedCOVID19PatientsWITHThrombosis"
* actual = false
* identifier.value = "WITHThrombosis"
* identifier.system = $ceosys
* status = #active
* name = "COVID19_patients_with_venous_thrombosis"
* description = "Population for guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: COVID-19 patients with (venous) thrombosis"
* url = "https://www.ceosys.de/fhir/population/Population_Hospitalised_COVID19_WITH_Thrombosis" // TODO: unique, actual URL

// Include COVID-19 patients without thrombosis
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[condition][+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#840539006 "COVID-19"
  * characteristic[condition][=].exclude = false
  * characteristic[condition][+]
    * linkId = "venous-thrombosis"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#111293003 "Venous Thrombosis"
  * characteristic[condition][=].exclude = false
* characteristic[=].exclude = false
