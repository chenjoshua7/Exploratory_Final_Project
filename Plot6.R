Q6sub <- subset(NEI, fips == "24510"| fips =="06037" & type == "ON-ROAD")

Q6sub$fips[Q6sub$fips == "24510"] <- "Baltimore, MD"
Q6sub$fips[Q6sub$fips == "06037"] <- "Los Angeles, CA"

Q6_emiss <- aggregate(Emissions ~ year + fips, Q6sub, sum)

g <- ggplot(Q6_emiss, aes(factor(year), Emissions, fill = fips))
g + geom_bar(stat = "identity") + xlab("Year") + facet_grid(fips~.) + ylab("Total PM25 Emmissions in Tons") + ggtitle("Total PM25 emissions from Vehicles in Baltimore and Los Angeles")