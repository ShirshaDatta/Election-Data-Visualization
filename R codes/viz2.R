
library(electionViz)
library(tidyverse)

load("C:/Users/hp/Downloads/elections.rda")
data(elections)
el12 <- elections %>% filter(year == 2012)
gg12 <- hexplot(el12$state, el12$perc_rep > el12$perc_dem) +
  scale_fill_party("", labels=c("Democrat", "Republican")) +
  theme(legend.position = "bottom") +
  ggtitle("Election 2012")

el16 <- elections %>% filter(year == 2016)
gg16 <- hexplot(el16$state, el16$perc_rep > el16$perc_dem) +
  scale_fill_party("", labels=c("Democrat", "Republican")) +
  theme(legend.position = "bottom") +
  ggtitle("Election 2016")

gridExtra::grid.arrange(gg12, gg16, ncol=2)

