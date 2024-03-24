library(XML)

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"

file <- download.file(fileUrl, destfile = "./restaurants.xml", method="curl")

doc <- xmlTreeParse(file= "./restaurants.xml", useInternal =TRUE)

doc


class(doc)

rootNode <- xmlRoot(doc)
xmlName(rootNode)

names(rootNode)
rootNode[[1]]
rootNode[[1]][[1]]

xmlSApply(rootNode, xmlValue)

zipdata <- xpathSApply(rootNode, "//zipcode", xmlValue)

specdata <- zipdata[c(zipdata==21231)]
length(specdata)

