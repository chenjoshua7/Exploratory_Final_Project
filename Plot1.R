dataPath <- "/exdata_data_NEI_data/"
NEI <- readRDS(paste(getwd(),dataPath,"summarySCC_PM25.rds", sep = ""))
SCC <- readRDS(paste(getwd(),dataPath,"Source_Classification_Code.rds", sep = ""))

total_emissions <- aggregate(Emissions ~ year, NEI, sum)

barplot(total_emissions$Emissions,names.arg = total_emissions$year, col = total_emissions$year, 
        xlab = "Year",ylab = "Total PM25 Emission in Tons", main = "Total PM25 Emission by Year")