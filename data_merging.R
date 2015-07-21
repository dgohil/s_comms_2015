library(XLConnect)
##merging data

### namunyak
nm <- loadWorkbook("data/social_comms_data_namunyak.xlsx")

nm_survey <- readWorksheet(nm,sheet="survey_brief")
nm_hhld <- readWorksheet(nm,sheet="hhld")
nm_assets <- readWorksheet(nm,sheet="assets_income")
nm_health <- readWorksheet(nm,sheet="health")
nm_ccy <- readWorksheet(nm,sheet="ccy")
nm_grazing <- readWorksheet(nm,sheet="grazing")
nm_wildlife <- readWorksheet(nm,sheet="wildlife")
nm_security <- readWorksheet(nm,sheet="security")
nm_cellphone <- readWorksheet(nm,sheet="cellphone")

####sera data
se <- loadWorkbook("data/social_comms_data_sera.xlsx")

se_survey <- readWorksheet(se,sheet="survey_brief")
se_hhld <- readWorksheet(se,sheet="hhld")
se_assets <- readWorksheet(se,sheet="assets_income")
se_health <- readWorksheet(se,sheet="health")
se_ccy <- readWorksheet(se,sheet="ccy")
se_grazing <- readWorksheet(se,sheet="grazing")
se_wildlife <- readWorksheet(se,sheet="wildlife")
se_security <- readWorksheet(se,sheet="security")
se_cellphone <- readWorksheet(se,sheet="cellphone")

###merging sheets
survey <- rbind(nm_survey,se_survey)
hhld <- rbind(nm_hhld,se_hhld)
assets <- rbind (nm_assets, se_assets)
health <- rbind(nm_health, se_health)
ccy <- rbind(nm_ccy, se_ccy)
grazing <- rbind(nm_grazing, se_grazing)
wildlife <- rbind (nm_wildlife, se_wildlife)
security <- rbind(nm_security, se_security)
cellphone <- rbind(nm_cellphone, se_cellphone)


###comparing columns to see which ones do not structurally match
#missing <- setdiff(names(nm_wildlife),names(se_wildlife))
#missing
missing <- setdiff(names(nm_assets),names(se_assets))
missing
