/**************/
/* Population */
/**************/
Instance: PopHospitalisedNonICUCOVID19PatientsWITHHighRisk
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Hospitalised COVID-19 patients without the need for intensive care therapy considered high-risk for developing venous thrombosis"
Description: "Population for recommendation 17 from guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: without the need for intensive care therapy, considered high-risk for developing venous thrombosis"
* name = "HospitalisedNonICUCOVID19PatientsWITHHighRisk"
* identifier.value = "WITHHighRisk"
* identifier.system = $ceosys
* status = #active
* name = "COVID19_patients_NOT_ICU_with_high_risk"
* insert canonical-url(covid19-inpatient-therapy, population/hospitalised-non-icu-covid19-patients-high-risk)
* description = "Population for recommendation 17 from guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: without the need for intensive care therapy, considered high-risk for developing venous thrombosis"
// Include patients with COVID-19 that are considered high-risk (here: ONLY high D-Dimer is counted as such!) and that are not treated on ICU currently
  // include covid-19 patients
* characteristic[0].definitionByCombination
  * code = #any-of
  // exclude patients on ICU
  * characteristic[episodeOfCare][+]
    * linkId = "intensive-care-treatment"
    * definitionByTypeAndValue
      * type = $loinc#78030-4 "Episode of care Type"
      * valueCodeableConcept = $cs-kontaktart-de#intensivstationaer "Intensivstationär"
  * characteristic[episodeOfCare][=].exclude = false
* characteristic[0].exclude = true
* characteristic[condition][+]
  * definitionByTypeAndValue
    * type = $sct#404684003 "Clinical finding (finding)"
    * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* characteristic[condition][=].exclude = false
// include patients with d-dimer >= 2 mg/l
* characteristic[observation][+]
  * linkId = "ddimer-range"
  * definitionByTypeAndValue
    * type = $loinc#48066-5 "Fibrin D-dimer DDU [Mass/volume] in Platelet poor plasma"
    * valueRange
      * low = 2 'mg/L'
* characteristic[observation][=].exclude = false
