/*********************/
/* Intervention Plan */
/*********************/
Instance: TherapeuticAnticoagulationICUCOVID19NoIndicationPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "Anticoagulation Plan for hospitalized intensive-care COVID-19 patients with no specific indication"
Description: "In intensive care patients without a specific indication (e.g. pulmonary embolism), therapeutic anticoagulation should not be given."
* name = "Anticoagulation_Plan_No_Specific_Indication"
* title = "Anticoagulation Plan for hospitalized intensive-care COVID-19 patients with no specific indication"
* version = "7.0"
* identifier.value = "TherapeuticAnticoagulationICUCOVID19NoIndication"
* date = "2022-02"
* status = #active
* description = "In intensive care patients without a specific indication (e.g. pulmonary embolism), therapeutic anticoagulation should not be given."
* subjectCanonical = Canonical(PopHospitalisedICUCOVID19Patients)
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NonProphylacticAnticoagulationWDalteparin)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NonProphylacticAnticoagulationWEnoxaparin)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NonProphylacticAnticoagulationWNadroparinLowWeight)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NonProphylacticAnticoagulationWNadroparinHighWeight)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NonProphylacticAnticoagulationWCertoparin)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* goal[laboratoryValue][+]
  * id = "aPTT-goal"
  * description.text = "aPTT value should not be > 50 sec."
  * category.coding = $sct#118246004 "Laboratory test finding (navigational concept)"
  * target
    * measure = $loinc#50754-1 "aPTT in Pooled Platelet poor plasma by Coagulation assay"
    * detailRange
      * high = 50 's' "sec"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NonProphylacticAnticoagulationWArgatra)
  * goalId = "aPTT-goal"
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NonProphylacticAnticoagulationWUFH)
  * goalId = "aPTT-goal"
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"


/*************************/
/* Intervention Activity */
/*************************/
Instance: NonProphylacticAnticoagulationWDalteparin
InstanceOf: drug-administration-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with Dalteparin"
Description: "No Therapeutic Anticoagulation Treatment with Dalteparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* name = "NoTherapeuticAnticoagulationDalteparinPlan"
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
* doNotPerform = true

Instance: NonProphylacticAnticoagulationWEnoxaparin
InstanceOf: drug-administration-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with Enoxaparin"
Description: "No Therapeutic Anticoagulation Treatment with Enoxaparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* name = "NoTherapeuticAnticoagulationPlanEnoxaparin"
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
* doNotPerform = true

Instance: NonProphylacticAnticoagulationWNadroparinLowWeight
InstanceOf: drug-administration-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with Nadroparin Low Weight"
Description: "No Therapeutic Anticoagulation Treatment with Nadroparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* name = "NoTherapeuticAnticoagulationPlanNadroparinLowWeight"
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
* doNotPerform = true

Instance: NonProphylacticAnticoagulationWNadroparinHighWeight
InstanceOf: drug-administration-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with Nadroparin High Weight"
Description: "No Therapeutic Anticoagulation Treatment with Nadroparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* name = "NoTherapeuticAnticoagulationPlanNadroparinHighWeight"
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
* doNotPerform = true

Instance: NonProphylacticAnticoagulationWCertoparin
InstanceOf: drug-administration-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with Certoparin"
Description: "No Therapeutic Anticoagulation Treatment with Certoparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* name = "NoTherapeuticAnticoagulationPlanCertoparin"
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
* doNotPerform = true

Instance: NonProphylacticAnticoagulationWUFH
InstanceOf: drug-administration-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with UFH"
Description: "No Therapeutic Anticoagulation Treatment with UFH for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* name = "NoTherapeuticAnticoagulationPlanUFH"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/no-therapeutic-anticoagulant-UFH-administration"
* status = #active
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#C05BA03 "Heparin"
  * coding[sct] = $sct#372877000 "Heparin (substance)"
* doNotPerform = true

Instance: NonProphylacticAnticoagulationWArgatra
InstanceOf: drug-administration-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with Argatroban"
Description: "No Therapeutic Anticoagulation Treatment with Argatroban for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* name = "NoTherapeuticAnticoagulationPlanArgatroban"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/no-therapeutic-anticoagulant-argatroban-administration"
* status = #active
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AE03 "Argatroban"
  * coding[sct] = $sct#116508003 "Argatroban (substance)"
* doNotPerform = true
