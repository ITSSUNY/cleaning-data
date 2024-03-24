library(data.table)
library(rvest)

fileUrl ="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"

DT <- download.file(fileUrl, destfile = "./servey.csv", method="curl")

file <- "./servey.csv"
DT <- fread(file)
?


system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))
system.time(DT[,mean(pwgtp15),by=SEX])
system.time(mean(DT$pwgtp15,by=DT$SEX))
system.time(rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2])
system.time(tapply(DT$pwgtp15,DT$SEX,mean))
system.time(mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15))

