data <- read.csv(file = "data1_full.csv", header = T)

sub_data <- data[data$country == "Canada" & data$year < 1980, ]

write.csv(Canada, file = "/Users/csoderbe/rr-organization1/files/Canada.csv", row.names = FALSE)

library(ggplot2)
ggplot(data = sub_data, aes(x = year, y = lifeExp)) +
  geom_point() +
  geom_line() 
ggsave("graph.png")



