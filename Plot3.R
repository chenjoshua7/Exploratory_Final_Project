library(ggplot2)

Q3_emiss <- aggregate(Emissions ~ year + type, Q2sub, sum)

g<-ggplot(Q3_emiss, aes(factor(year), Emissions, fill = type))
g + geom_bar(stat = "identity") + facet_grid(.~ type) + xlab("Year") + ylab("Total PM25 Emmissions in Tons") + ggtitle("Total PM25 emissions in Baltimore by Type")