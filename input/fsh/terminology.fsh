CodeSystem: ClientKeyPopulationCodeSystem
Id: client-key-population-code-system
Title: "Client Key Population CodeSystem"
Description: "Client Key Population custom code system"
* ^experimental = false
* ^caseSensitive = true
* #General-Population "General Population"

ValueSet: ClientKeyPopulationValues
Id: client-key-population-values
Title: "Client Key Population Values"
Description: "Client Key Population Value Set"
* ^experimental = false
* $SCT#472986005 "Sexually active with men" 
* $SCT#159799000 "Female prostitute"
* $SCT#159800001 "Male prostitute"
* $SCT#228388006 "Intravenous drug user"
* $SCT#417284009 "Current drug user"
* $SCT#407375002 "Surgically transgendered transsexual"
* $client-key-population-code-system#General-Population "General Population"

CodeSystem: FollowUpStatusCodeSystem
Id: followup-status-code-system
Title: "Follow Up Status Code System"
Description: "A list of codes describing the follow up statuses"
* ^url = $FOLLOWUP_STATUS
* ^experimental = false
* ^caseSensitive = true
* #alive-on-art "Alive on ART"
* #to "TO"
* #dead "Dead"
* #drop "Drop"
* #restart "Restart"
* #lost "Lost"
* #stop "Stop"

ValueSet: FollowUpStatusValueSet
Id: followup-status-value-set
Title: "Follow Up Status Value Set"
Description: "FollowUp Status Value Set"
* ^experimental = false
* codes from system followup-status-code-system

CodeSystem: DispenseCodesCodeSystem
Id: dispense-codes-code-system
Title: "ARV Drugs Dispense Codes Code System"
Description: "A list of codes describing the ARV Drugs dispense codes"
* ^url = $REGIMEN_CODES
* ^experimental = false
* ^caseSensitive = true
* #1a "1a"
* #1b "1b"
* #1c "AZT + 3TC + NVP - Product containing only lamivudine and nevirapine and zidovudine"
* #1d "AZT + 3TC + EFV"
* #1e "Product containing only efavirenz and lamivudine and tenofovir - TDF + 3TC + EFV"
* #1f "TDF + 3TC + NVP"
* #1g "ABC + 3TC + EFV - Product containing abacavir and lamivudine"
* #1h "ABC + 3TC + NVP - Product containing abacavir and lamivudine"
* #1j "TDF + 3TC + DTG"
* #1k "AZT + 3TC + DTG"
* #1a-30 "1a-30"
* #1a-40 "1a-40"
* #1b-30 "1b-30"
* #1b-40 "1b-40"
* #2a "2a"
* #2b "2b"
* #2c "2c"
* #2d "2d"
* #2e "AZT + 3TC + LPV/r - Product containing lamivudine and zidovudine"
* #2f "AZT + 3TC + ATV/r - Product containing lamivudine and zidovudine"
* #2g "TDF + 3TC+ LPV/r"
* #2h "TDF + 3TC + ATV/r"
* #2i "ABC + 3TC + LPV/r - Product containing abacavir and lamivudine"
* #3a "DRV/r + DTG + AZT/3TC"
* #3b "DRV/r + DTG + TDF/3TC - Product containing dolutegravir and lamivudine"
* #3d "DRV/r + ABC + EFV + 3TC"
* #4a "4a"
* #4b "4b"
* #4c "AZT + 3TC + NVP"
* #4d "AZT + 3TC + EFV"
* #4e "TDF + 3TC + EFV"
* #4f "AZT + 3TC + LPV/r"
* #4g "ABC + 3TC + LPV/r"
* #4j "ABC + 3TC + DTG"
* #4i "TDF + 3TC + DTG"
* #4k "AZT + 3TC + DTG"
* #5a "5a"
* #5b "5b"
* #5c "5c"
* #5d "5d"
* #5e "ABC + 3TC + LPV/r"
* #5f "AZT + 3TC + LPV/r"
* #5g "TDF + 3TC + EFV"
* #5h "ABC + 3TC + EFV"
* #5i "TDF + 3TC + LPV/r"
* #5j "other"
* #5k "RAL + AZT + 3TC"
* #5m "ABC + 3TC + DTG"
* #5n "ABC + 3TC + LPV/r"
* #6f "DRV/r + DTG + ABC + 3TC"
* #other-adult-1 "Other Adult first line regimen"
* #other-adult-2 "Other Adult second line regimen"
* #other-adult-3 "Other Adult third line regimen"
* #other-children-1 "Other Children first line regimen"
* #other-children-2 "Other Children second line regimen"
* #other-children-3 "Other Children third line regimen"


ValueSet: DispenseCodesValueSet
Id: dispense-codes-value-set
Title: "ARV Drugs Dispense Codes Value Set"
Description: "ARV Drugs dispense code Value Set"
* ^experimental = false
* codes from system dispense-codes-code-system 
* $SCT#874950001 "Product containing only efavirenz and lamivudine and tenofovir - TDF + 3TC + EFV"
* $SCT#324859007 "Product containing lamivudine and zidovudine - AZT + 3TC + ATV/r - AZT + 3TC + LPV/r"
* $SCT#776467001 "AZT + 3TC + NVP - Product containing only lamivudine and nevirapine and zidovudine"
* $SCT#787163007 "DRV/r + DTG + TDF/3TC - Product containing dolutegravir and lamivudine"
* $SCT#413381000 "Product containing abacavir and lamivudine - ABC + 3TC + LPV/r - ABC + 3TC + EFV - ABC + 3TC + NVP"
