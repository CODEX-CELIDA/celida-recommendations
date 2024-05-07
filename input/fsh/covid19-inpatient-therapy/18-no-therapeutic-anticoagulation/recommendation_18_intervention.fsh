/*********************/
/* Intervention Plan */
/*********************/
Instance: NoTherapeuticAnticoagulationICUCOVID19NoIndicationPlan
InstanceOf: recommendation-plan
Usage: #definition
Title: "Anticoagulation Plan for hospitalized intensive-care COVID-19 patients with no specific indication"
Description: "In intensive care patients without a specific indication (e.g. pulmonary embolism), therapeutic anticoagulation should not be given."
* insert canonical-url(covid19-inpatient-therapy, intervention-plan/no-therapeutic-anticoagulation)
* insert publisher-experimental-version(7.0)
* name = "Anticoagulation_Plan_No_Specific_Indication"
* title = "Anticoagulation Plan for hospitalized intensive-care COVID-19 patients with no specific indication"
* identifier.value = "TherapeuticAnticoagulationICUCOVID19NoIndication"
* date = "2022-02"
* status = #active
* description = "In intensive care patients without a specific indication (e.g. pulmonary embolism), therapeutic anticoagulation should not be given."
* subjectCanonical = Canonical(PopHospitalisedICUCOVID19Patients)
* extension[partOf].valueCanonical = Canonical(RecCollectionNoTherapeuticAnticoagNoIndicationICUCOVID19)
* goal[laboratoryValue][+]
  * id = "aPTT-goal"
  * description.text = "aPTT value should not be > 50 sec."
  * category = $sct#410394004 "Lab findings surveillance (regime/therapy)"
  * target
    * measure = $loinc#3173-2 "aPTT in Blood by Coagulation assay"
    * detailRange
      * low = 50 's' "sec"
* insert rs-combination-all
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWUFH)
  * goalId = "aPTT-goal"
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWDalteparin1xd)
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWDalteparin2xd)
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWDalteparinTable)
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWNadroparin)
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWEnoxaparin1xd)
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWEnoxaparin2xd)
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWCertoparin)
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWArgatra)
  * goalId = "aPTT-goal"
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWTinzaparin)
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationFondaparinux)
  * code = $sct#432102000 "Administration of substance (procedure)"


/*************************/
/* Recommended Actions   */
/*************************/
Instance: NoTherapeuticAnticoagulationWUFH
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with UFH"
Description: "No Therapeutic Anticoagulation Treatment with UFH for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-UFH-administration)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanUFH"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with UFH for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#372877000 "Heparin (substance)"
  * coding[atcde] = $atcde#C05BA03 "Heparin"
* dosage
  * route = $sct#47625008 "Intravenous route (qualifier value)"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseRange
      * low = 0.00001 '[iU]' "IU" // any dose of i.v. Argatroban
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWDalteparin1xd
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with Dalteparin"
Description: "No Therapeutic Anticoagulation Treatment with Dalteparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-dalteparin-administration-1xd)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationDalteparinPlan"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Dalteparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#372563008 "Dalteparin (substance)"
  * coding[atcde] = $atcde#B01AB04 "Dalteparin"
* dosage[+]
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 200 '[iU]/kg' "IU/kg"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWDalteparin2xd
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with Dalteparin"
Description: "No Therapeutic Anticoagulation Treatment with Dalteparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-dalteparin-administration-2xd)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationDalteparinPlan"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Dalteparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#372563008 "Dalteparin (substance)"
  * coding[atcde] = $atcde#B01AB04 "Dalteparin"
* dosage[+]
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing
    * repeat
      * frequency = 2
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 100 '[iU]/kg' "IU/kg"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWDalteparinTable
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with Dalteparin"
Description: "No Therapeutic Anticoagulation Treatment with Dalteparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-dalteparin-administration-table)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationDalteparinPlan"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Dalteparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#372563008 "Dalteparin (substance)"
  * coding[atcde] = $atcde#B01AB04 "Dalteparin"
* dosage[+]
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.low = 46 'kg' "kg"
    * extension[value].valueRange.high = 56.999999 'kg' "kg"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 10000 '[iU]' "IU"
* dosage[+]
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.low = 57 'kg' "kg"
    * extension[value].valueRange.high = 68.999999 'kg' "kg"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 12500 '[iU]' "IU"
* dosage[+]
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.low = 69 'kg' "kg"
    * extension[value].valueRange.high = 82.999999 'kg' "kg"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 15000 '[iU]' "IU"
* dosage[+]
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.low = 83 'kg' "kg"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 18000 '[iU]' "IU"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWEnoxaparin1xd
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with Enoxaparin"
Description: "No Therapeutic Anticoagulation Treatment with Enoxaparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-enoxaparin-administration-1xd)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanEnoxaparin"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Enoxaparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#372562003 "Enoxaparin (substance)"
  * coding[atcde] = $atcde#B01AB05 "Enoxaparin"
* dosage[+]
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 1.5 'mg/kg' "mg/kg"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWEnoxaparin2xd
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with Enoxaparin"
Description: "No Therapeutic Anticoagulation Treatment with Enoxaparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-enoxaparin-administration-2xd)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanEnoxaparin"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Enoxaparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#372562003 "Enoxaparin (substance)"
  * coding[atcde] = $atcde#B01AB05 "Enoxaparin"
* dosage[+]
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing
    * repeat
      * frequency = 2
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 1 'mg/kg' "mg/kg"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWNadroparin
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with Nadroparin"
Description: "No Therapeutic Anticoagulation Treatment with Nadroparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-nadroparin-administration)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanNadroparin"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Nadroparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#699946002 "Nadroparin (substance)"
  * coding[atcde] = $atcde#B01AB06 "Nadroparin"
// Weight (kg)	Dose s.c. (IE; 2x/d)
// <50	3800
// 50-59	4750
// 60-69	5700
// 70-79	6650
// 80-89	7600
// ≥90	8550
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.high = 49.999999 'kg' "kg"
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 3800 '[iU]' "IU"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.low = 50 'kg' "kg"
    * extension[value].valueRange.high = 59.999999 'kg' "kg"
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 4750 '[iU]' "IU"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.low = 60 'kg' "kg"
    * extension[value].valueRange.high = 69.999999 'kg' "kg"
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 5700 '[iU]' "IU"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.low = 70 'kg' "kg"
    * extension[value].valueRange.high = 79.999999 'kg' "kg"
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 6650 '[iU]' "IU"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.low = 80 'kg' "kg"
    * extension[value].valueRange.high = 89.999999 'kg' "kg"
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 7600 '[iU]' "IU"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.low = 90 'kg' "kg"
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 8550 '[iU]' "IU"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWCertoparin
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with Certoparin"
Description: "No Therapeutic Anticoagulation Treatment with Certoparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-certoparin-administration)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanCertoparin"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Certoparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#395961003 "Certoparin (substance)"
  * coding[atcde] = $atcde#B01AB13 "Certoparin"
* dosage
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing
    * repeat
      * frequency = 2
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 8000 '[iU]' "IU"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWArgatra
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with Argatroban"
Description: "No Therapeutic Anticoagulation Treatment with Argatroban for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-argatroban-administration)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanArgatroban"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Argatroban for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#116508003 "Argatroban (substance)"
  * coding[atcde] = $atcde#B01AE03 "Argatroban"
* dosage
  * route = $sct#47625008 "Intravenous route (qualifier value)"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseRange
      * low = 0.00001 '[iU]' "IU" // any dose of i.v. Argatroban
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWTinzaparin
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with Tinzaparin"
Description: "No Therapeutic Anticoagulation Treatment with Tinzaparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-tinzaparin-administration)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanTinzaparin"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Tinzaparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB10 "Tinzaparin"
  * coding[sct] = $sct#412608008 "Tinzaparin (substance)"
* dosage
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 175 '[iU]/kg' "IU/kg"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationFondaparinux
InstanceOf: drug-administration-action
Usage: #definition
Title: "NO Therapeutic Anticoagulation Treatment with Fondaparinux"
Description: "No Therapeutic Anticoagulation Treatment with Fondaparinux for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-fondaparinux-administration)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanFondaparinux"
* status = #active
* description = "NoTherapeutic Anticoagulation Treatment with Fondaparinux for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#708189008 "Fondaparinux (substance)"
  * coding[atcde] = $atcde#B01AX05 "Fondaparinux (substance)"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.high = 49.999999 'kg' "kg"
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 5 'mg' "mg"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.low = 50 'kg' "kg"
    * extension[value].valueRange.high = 100 'kg' "kg"
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 7.5 'mg' "mg"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.low = 100.00001 'kg' "kg"
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 10 'mg' "mg"
* doNotPerform = true
