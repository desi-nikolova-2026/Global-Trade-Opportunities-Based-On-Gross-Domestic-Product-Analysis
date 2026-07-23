# Load the data:
# see the reference here - https://readxl.tidyverse.org/

install.packages("tidyverse")
install.packages("readxl")
install.packages("pak")
pak::pak("tidyverse/readxl")
library(readxl)

# Read the file and skip the header inserted by The World Bank (first 3 rows):

xls_data_Trade_GDP <- read_excel("API_NE.TRD.GNFS.ZS_DS2_en_excel_v2_33090.xls", 
                                 sheet='Data',
                                 skip = 3)
xls_data_Trade_GDP

# Remove ALL rows until Country Name:

#TODO

# Save the Excel file that should be used in MS PowerBI:

library(writexl)
write_xlsx(xls_data_Trade_GDP, 'Trade_GDP_Preprocessed.xls')
file.exists('Trade_GDP_Preprocessed.xls')

# TODO - add column names when exporting the excel file*
