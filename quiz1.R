fileUrl <- "https://...csv"

file <- download.file(fileUrl, destfile = "./getdata_data_ss06hid.csv", method="curl")

housingData <- read.table("./getdata_data_ss06hid.csv", sep=",", header=T)

housingData[, "VAL"] <- as.numeric(housingData[, "VAL"])

convertData <- housingData[!is.na(housingData[, "VAL"]), ]
nrow( convertData)

testData <- convertData[convertData$VAL >= 24, ]
nrow( convertData)

testData[,"VAL"]