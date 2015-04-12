Data <- read.table("household_power_consumption.txt",skip=66600,nrow=3000,header=TRUE,sep=";")
Data <- Data[Data[,1]=="1/2/2007" | Data[,1]=="2/2/2007",]
x <- paste(Data[,1],Data[,2])
Data[,1] <- as.Date(Data[,1],"%d/%m/%Y")
Data$Time <- strptime(x,format="%d/%m/%Y %H:%M:%S")
hist(Data[,3],col='orangered',xlab="Global Active Power (kilowatts)",main="Global Active Power")
