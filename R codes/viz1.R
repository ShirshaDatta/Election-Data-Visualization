library("fiftystater")
library(ggplot2) # for plotting and miscellaneous things
library(ggmap) # for plotting
library(plyr) # for merging datasets
library(scales) # to get nice looking legends
library(maps) # Creates high quality maps that may be shaded or projected in a variety of ways.



data("fifty_states") # this line is optional due to lazy data loading

crimes <- data.frame(state = tolower(rownames(USArrests)), USArrests)

# map_id creates the aesthetic mapping to the state name column in your data
p <- ggplot(crimes, aes(map_id = state)) + 
  # map points to the fifty_states shape data
  geom_map(aes(fill = Assault), map = fifty_states) + 
  expand_limits(x = fifty_states$long, y = fifty_states$lat) +
  coord_map() +
  scale_x_continuous(breaks = NULL) + 
  scale_y_continuous(breaks = NULL) +
  labs(x = "", y = "") +
  theme(legend.position = "bottom", 
        panel.background = element_blank())

p










# Get a shape file of states in the US
usa.df <- fifty_states
colnames(usa.df)[6] <- "State"

# Get the data to be plotted
usa.dat <- read.csv("C:/Users/Gourav/Desktop/prj/us_2016_election_data.csv", header = T, sep = ",")

#$ sign used to extract column names from the dataset
usa.dat$State <- tolower(usa.dat$State)
usa.dat$Clinton..<- as.numeric(gsub("%", "", usa.dat$Clinton..))
usa.dat$Trump..<- as.numeric(gsub("%", "", usa.dat$Trump..))
usa.dat <- usa.dat[,c("State", "Clinton..", "Trump..")]
usa.Hillary <- usa.dat[usa.dat$Clinton.. < 50 , c('State','Clinton..')]
usa.Donald <- usa.dat[usa.dat$Trump..>=50, c('State','Trump..')]

# Merge the data with the shape file

usa.df <- join(usa.df, usa.dat, by = "State", type = "inner")
usaDonald.df <- join(usa.df, usa.Donald, by = "State", type = "inner")
usaHillary.df <- join(usa.df, usa.Hillary, by = "State", type = "inner")


# Abbreviations of states and where thy should be plotted

states <- data.frame(state.center, state.abb) # centers of states and abbreviations
subset <- tolower(state.name) %in% usa.df$State # exclude Hawaii as there is no data for this state
states <- states[subset, ]


# A function that plots the map based on the data given
p1 <- function(data, title)
{
  
  ggp<- ggplot()+geom_polygon(data = usa.df, aes(x = long, y = lat, group = group, fill = Clinton..), color = "black", size = 0.15) +
    scale_fill_gradient2(midpoint=50,low="red3", mid="aliceblue",high="deepskyblue3",breaks=c(0,25,50,75,100),labels=c("Trump..","75","50","75","Clinton.."),limits=c(0,100))+
    theme_nothing(legend = TRUE) + labs(title = title, fill = "") + 
    
    
    geom_text(data = states, aes(x = x, y = y, label = state.abb), size = 2)
  return (ggp)
}


figure.title <- "State-by-state percentage vote share of President Trump in
the 2016 US presidential election"

p1(usa.df,figure.title)

