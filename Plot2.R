Q2sub <- subset(NEI, fips == 24510)

Q2_emiss <- aggregate(Emissions ~ year, Q2sub, sum)

barplot(Q2_emiss$Emissions,names.arg = Q2_emiss$year, col = Q2_emiss$year, 
        xlab = "Year",ylab = "Total PM25 Emission in Tons", main = "Total PM25 Emission by Year in Baltimore")