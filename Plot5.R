Q5sub <- subset(Q2sub, type == "ON-ROAD")

Q5_emiss <- aggregate(Emissions ~ year, Q5sub, sum)

g <- ggplot(Q5_emiss, aes(factor(year), Emissions, fill = year))
g + geom_bar(stat = "identity") + xlab("Year") + ylab("Total PM25 Emmissions in Tons") + ggtitle("Total PM25 emissions in Baltimore from Vehicles")