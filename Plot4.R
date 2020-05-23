TotalData <- merge(NEI, SCC, by = "SCC")

coalData  <- grepl("coal", TotalData$Short.Name, ignore.case=TRUE)
Q4sub <- TotalData[coalData,]
Q4_emiss <- aggregate(Emissions ~ year, Q4sub, sum)

g <- ggplot(Q4_emiss, aes(factor(year), Emissions, fill = year))
g + geom_bar(stat = "identity") + xlab("Year") + ylab("Total PM25 Emmissions in Tons") + ggtitle("Total Coal-Related PM25 emissions by Type")