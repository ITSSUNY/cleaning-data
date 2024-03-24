library(openxlsx)

ngas <- read.xlsx("./getdata_data_DATA.gov_NGAP.xlsx", sheet =1) 

dat <- ngas[18:23, 7:15]

names(dat)
nrow(dat)

colnames(dat) <- c("Zip", "CuCurrent", "PaCurrent", "PoCurrent", "Contact", "Ext", "Fax", "email", "Status")


dat[, "Zip"]<- as.numeric(dat[, "Zip"])
dat[, "Ext"]<- as.numeric(dat[, "Ext"])


sum(dat$Zip*dat$Ext,na.rm=T)