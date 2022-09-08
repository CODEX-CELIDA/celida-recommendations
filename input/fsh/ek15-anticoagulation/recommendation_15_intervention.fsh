/************************/
/* Intervention Plans */
/************************/
Instance: AntithrombLWMHProphInHospitalisedCOVID19PatientsRecommPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "Antithrombotic prophylaxis with LWMH"
Description: "Hospitalized patients with COVID-19 should receive standard drug thromboembolism prophylaxis with low molecular weight heparin in the absence of contraindications. Alternatively, fondaparinux may be used. "
* insert canonical-url(change-me) // TODO: add proper url
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithLWMH"
* title = "Antithrombotic prophylaxis with LWMH in hospitalised COVID-19 patients"
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
* insert canonical-url(change-me) // TODO: add proper url
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithFondaparinux"
* title = "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients"
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
* insert canonical-url(change-me) // TODO: add proper url
* insert publisher-experimental-version(0.1)
* name = "NoAntithromboticProphylaxis"
* title = "No antithrombotic prophylaxis in patients with thrombosis"
* date = "2022-04-27"
* status = #active
* description = "No antithrombotic prophylaxis in patients with thrombosis"
* subjectCanonical = Canonical(PopHospitalisedCOVID19PatientsWITHThrombosis)
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoProphylacticAnticoagulationWDalteparin)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoProphylacticAnticoagulationWEnoxaparin)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoProphylacticAnticoagulationWNadroparinLowWeight)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoProphylacticAnticoagulationWNadroparinHighWeight)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoProphylacticAnticoagulationWCertoparin)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoAntithromboticProphylaxisFondaparinuxSubcutaneous)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"

/**********************/
/* Recommended Action */
/**********************/
Instance: ProphylacticAnticoagulationWDalteparin
InstanceOf: drug-administration-action
Usage: #example
Title: "Antithrombotic prophylaxis with Dalteparin"
Description: "Antithrombotic prophylaxis with Dalteparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-dalteparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithDalteparinPlan"
* status = #active
* description = "Antithrombotic prophylaxis with Dalteparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
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
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-enoxaparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithEnoxaparinPlan"
* status = #active
* description = "Antithrombotic prophylaxis with Enoxaparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
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
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-nadroparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithPlanNadroparinLowWeight"
* status = #active
* description = "Antithrombotic prophylaxis with Nadroparin Low Weight in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
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
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-nadroparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithNadroparinHighWeightPlan"
* status = #active
* description = "Antithrombotic prophylaxis with Nadroparin High Weight in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
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
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-certoparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithCertoparinPlan"
* status = #active
* description = "Antithrombotic prophylaxis with Certoparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB13 "Certoparin"
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
* insert canonical-url(recommendation-action/antithrombotic_prophylaxis_fondaparinux) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "ProphylacticFondaparinuxApplicationActivity"
* status = #active
* description = "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients (when contraindications for LWMH exist)"
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


/* DO NOT PERFORM actions */
Instance: NoProphylacticAnticoagulationWDalteparin
InstanceOf: drug-administration-action
Usage: #example
Title: "Antithrombotic prophylaxis with Dalteparin"
Description: "Antithrombotic prophylaxis with Dalteparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-dalteparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithDalteparinPlan"
* status = #active
* description = "Antithrombotic prophylaxis with Dalteparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB04 "Dalteparin"
  * coding[sct] = $sct#372563008 "Dalteparin (substance)"
* doNotPerform = true

Instance: NoProphylacticAnticoagulationWEnoxaparin
InstanceOf: drug-administration-action
Usage: #example
Title: "Antithrombotic prophylaxis with Enoxaparin"
Description: "Antithrombotic prophylaxis with Enoxaparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-enoxaparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithEnoxaparinPlan"
* status = #active
* description = "Antithrombotic prophylaxis with Enoxaparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB05 "Enoxaparin"
  * coding[sct] = $sct#372562003 "Enoxaparin (substance)"
* doNotPerform = true

Instance: NoProphylacticAnticoagulationWNadroparinLowWeight
InstanceOf: drug-administration-action
Usage: #example
Title: "Antithrombotic prophylaxis with Nadroparin Low Weight"
Description: "Antithrombotic prophylaxis with Nadroparin Low Weight in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-nadroparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithPlanNadroparinLowWeight"
* status = #active
* description = "Antithrombotic prophylaxis with Nadroparin Low Weight in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB06 "Nadroparin"
  * coding[sct] = $sct#699946002 "Nadroparin (substance)"
* doNotPerform = true

Instance: NoProphylacticAnticoagulationWNadroparinHighWeight
InstanceOf: drug-administration-action
Usage: #example
Title: "Antithrombotic prophylaxis with Nadroparin High Weight"
Description: "Antithrombotic prophylaxis with Nadroparin High Weight in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-nadroparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithNadroparinHighWeightPlan"
* status = #active
* description = "Antithrombotic prophylaxis with Nadroparin High Weight in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB06 "Nadroparin"
  * coding[sct] = $sct#699946002 "Nadroparin (substance)"
* doNotPerform = true

Instance: NoProphylacticAnticoagulationWCertoparin
InstanceOf: drug-administration-action
Usage: #example
Title: "Antithrombotic prophylaxis with with Certoparin"
Description: "Antithrombotic prophylaxis with Certoparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-certoparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithCertoparinPlan"
* status = #active
* description = "Antithrombotic prophylaxis with Certoparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB13 "Certoparin"
  * coding[sct] = $sct#395961003 "Certoparin (substance)"
* doNotPerform = true

Instance: NoAntithromboticProphylaxisFondaparinuxSubcutaneous
InstanceOf: drug-administration-action
Usage: #example
Title: "Antithrombotic prophylaxis with Fondaparinux"
Description: "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients (when contraindications for LWMH exist)"
* insert canonical-url(recommendation-action/antithrombotic_prophylaxis_fondaparinux) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "ProphylacticFondaparinuxApplicationActivity"
* status = #active
* description = "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients (when contraindications for LWMH exist)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AX05 "Fondaparinux"
  * coding[sct] = $sct#708189008 "Fondaparinux (substance)"
* doNotPerform = true