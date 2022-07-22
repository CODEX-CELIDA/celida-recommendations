/************************/
/* Intervention Plans */
/************************/
Instance: AntithrombLWMHProphInHospitalisedCOVID19PatientsRecommPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "Antithrombotic prophylaxis with LWMH"
Description: "Hospitalized patients with COVID-19 should receive standard drug thromboembolism prophylaxis with low molecular weight heparin in the absence of contraindications. Alternatively, fondaparinux may be used. "
* name = "AntithromboticProphylaxisWithLWMH"
* title = "Antithrombotic prophylaxis with LWMH in hospitalised COVID-19 patients"
* version = "0.1"
* date = "2022-04-27"
* status = #active
* description = "Antithrombotic prophylaxis with LWMH in hospitalised COVID-19 patients"
* subjectCanonical = Canonical(PopHospitalisedCOVID19PatientsWOVenousThrombosisWOCI)
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ProphylacticAnticoagulationWDalteparin)
  * selectionBehavior = #exactly-one
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ProphylacticAnticoagulationWEnoxaparin)
  * selectionBehavior = #exactly-one
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ProphylacticAnticoagulationWNadroparinLowWeight)
  * selectionBehavior = #exactly-one
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ProphylacticAnticoagulationWNadroparinHighWeight)
  * selectionBehavior = #exactly-one
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ProphylacticAnticoagulationWCertoparin)
  * selectionBehavior = #exactly-one
  * code = $sct#432102000 "Administration of substance (procedure)"


Instance: AntithrombFondapProphInHospitalisedCOVID19PatientsRecommPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "Antithrombotic prophylaxis with Fondaparinux"
Description: "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients"
* name = "AntithromboticProphylaxisWithFondaparinux"
* title = "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients"
* version = "0.1"
* date = "2022-04-27"
* status = #active
* description = "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients"
* subjectCanonical = Canonical(PopHospitalisedCOVID19PatientsWOVenousThrombosisWITHCI)
* action[drugAdministration][+]
  * code = $sct#432102000 "Administration of substance (procedure)"
  * definitionCanonical = Canonical(AntithromboticProphylaxisFondaparinuxSubcutaneous)
  * selectionBehavior = #exactly-one


Instance: NoAntithrombProphInHospitalisedCOVID19PatientsRecommPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "No antithrombotic prophylaxis in patients with thrombosis"
Description: "No antithrombotic prophylaxis in patients with thrombosis"
* name = "NoAntithromboticProphylaxis"
* title = "No antithrombotic prophylaxis in patients with thrombosis"
* version = "0.1"
* date = "2022-04-27"
* status = #active
* description = "No antithrombotic prophylaxis in patients with thrombosis"
* subjectCanonical = Canonical(PopHospitalisedCOVID19PatientsWITHThrombosis)
* action[drugAdministration][+]
  * code = $sct#432102000 "Administration of substance (procedure)"
  * definitionCanonical = Canonical(NoAntithromboticProphylaxis)
  * selectionBehavior = #exactly-one


/**********************/
/* Recommended Action */
/**********************/

Instance: ProphylacticAnticoagulationWDalteparin
InstanceOf: drug-administration-action
Usage: #example
Title: "Antithrombotic prophylaxis with Dalteparin"
Description: "Antithrombotic prophylaxis with Dalteparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* name = "AntithromboticProphylaxisWithDalteparinPlan"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/no-therapeutic-anticoagulant-dalteparin-administration"
* status = #active
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB04 "Dalteparin"
  * coding[sct] = $sct#372563008 "Dalteparin (substance)"
* dosage
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "d"
  * doseAndRate
    * doseRange
      * low = 5000 $ucum#[iU] "IU"
    * rateQuantity = 1 '/d' "/d"

Instance: ProphylacticAnticoagulationWEnoxaparin
InstanceOf: drug-administration-action
Usage: #example
Title: "Antithrombotic prophylaxis with Enoxaparin"
Description: "Antithrombotic prophylaxis with Enoxaparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* name = "AntithromboticProphylaxisWithEnoxaparinPlan"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/no-therapeutic-anticoagulant-enoxaparin-administration"
* status = #active
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB05 "Enoxaparin"
  * coding[sct] = $sct#372562003 "Enoxaparin (substance)"
* dosage
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "d"
  * doseAndRate
    * doseRange
      * low = 40 'mg'
    * rateQuantity = 1 '/d' "/d"


Instance: ProphylacticAnticoagulationWNadroparinLowWeight
InstanceOf: drug-administration-action
Usage: #example
Title: "Antithrombotic prophylaxis with Nadroparin Low Weight"
Description: "Antithrombotic prophylaxis with Nadroparin Low Weight in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* name = "AntithromboticProphylaxisWithPlanNadroparinLowWeight"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/no-therapeutic-anticoagulant-nadroparin-administration"
* status = #active
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB06 "Nadroparin"
  * coding[sct] = $sct#699946002 "Nadroparin (substance)"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.high = 70 'kg' "kg"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "d"
  * doseAndRate
    * doseRange
      * low = 3800 $ucum#[iU] "IU"
    * rateQuantity = 1 '/d' "/d"


Instance: ProphylacticAnticoagulationWNadroparinHighWeight
InstanceOf: drug-administration-action
Usage: #example
Title: "Antithrombotic prophylaxis with Nadroparin High Weight"
Description: "Antithrombotic prophylaxis with Nadroparin High Weight in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* name = "AntithromboticProphylaxisWithNadroparinHighWeightPlan"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/no-therapeutic-anticoagulant-nadroparin-administration"
* status = #active
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB06 "Nadroparin"
  * coding[sct] = $sct#699946002 "Nadroparin (substance)"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.low = 70 'kg' "kg"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "d"
  * doseAndRate
    * doseRange
      * low = 5700 $ucum#[iU] "IU"
    * rateQuantity = 1 '/d' "/d"


Instance: ProphylacticAnticoagulationWCertoparin
InstanceOf: drug-administration-action
Usage: #example
Title: "Antithrombotic prophylaxis with with Certoparin"
Description: "Antithrombotic prophylaxis with Certoparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* name = "AntithromboticProphylaxisWithCertoparinPlan"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/no-therapeutic-anticoagulant-certoparin-administration"
* status = #active
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB13  "Certoparin"
  * coding[sct] = $sct#395961003 "Certoparin (substance)"
* dosage
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "d"
  * doseAndRate
    * doseRange
      * low = 3000 $ucum#[iU] "IU"
    * rateQuantity = 1 '/d' "/d"


Instance: AntithromboticProphylaxisFondaparinuxSubcutaneous
InstanceOf: drug-administration-action
Usage: #example
Title: "Antithrombotic prophylaxis with Fondaparinux"
Description: "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients (when contraindications for LWMH exist)"
* name = "ProphylacticFondaparinuxApplicationActivity"
* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/antithrombotic_prophylaxis_fondaparinux" //TODO: unique, actual URL!
* status = #active
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AX05 "Fondaparinux"
  * coding[sct] = $sct#708189008 "Fondaparinux (substance)"
* dosage
  * route = $sct#386362006 "Administration of drug or medicament via subcutaneous route (procedure)"
  * timing
    * code = $cs-gts-timing#QD // TODO: is redundant with doseAndRate - define profile here?
  * doseAndRate
    * doseQuantity = 2.5 'mg' "mg"
    * rateQuantity = 1 '/d' "/d"


Instance: NoAntithromboticProphylaxis
InstanceOf: drug-administration-action
Usage: #example
Title: "No Antithrombotic prophylaxis in patients with thrombosis"
Description: "No antithrombotic prophylaxis in patients with thrombosis"
* name = "NoAntithromboticProphylaxisApplicationActivity"
* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/No_antithrombotic_prophylaxis"
* status = #active
* code = $sct#432102000 "Administration of substance (procedure)"
* doNotPerform = true
