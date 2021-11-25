library(readxl)
library(rio)

# xlsx files
my_data <- read_excel("su.xlsx")
xls <- dir(pattern = "xlsx")
created <- mapply(convert, xls, gsub("xlsx", "csv", xls))
unlink(xls) # delete xlsx files