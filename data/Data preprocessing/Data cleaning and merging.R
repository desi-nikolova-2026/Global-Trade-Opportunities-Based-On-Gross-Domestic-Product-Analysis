# Load the data:
# see the reference here - https://readxl.tidyverse.org/
install.packages("tidyverse")
install.packages("readxl")
install.packages("pak")
pak::pak("tidyverse/readxl")


# Read the file and skip the header inserted by The World Bank (first 3 rows):
library(readxl)
xls_data_Trade_GDP <- read_excel("API_NE.TRD.GNFS.ZS_DS2_en_excel_v2_33090.xls", 
                                 sheet='Data',
                                 skip = 3)
xls_data_Trade_GDP

# TODO - add column names when exporting the excel file:

#TODO
### perhaps this can help : https://www.biostars.org/p/469010/

# Save the Excel file that should be used in MS PowerBI:

library(writexl)
write_xlsx(xls_data_Trade_GDP, 'Trade_GDP_Preprocessed.xlsx')
file.exists('Trade_GDP_Preprocessed.xlsx')


