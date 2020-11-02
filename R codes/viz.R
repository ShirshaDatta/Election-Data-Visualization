election_result <- read.csv(file = "C:/Users/hp/Downloads/2019_Results.csv",TRUE, sep = ",", stringsAsFactors = FALSE)
str(election_result)
dim(election_result)
head(election_result,10)
library(dplyr)
library(ggplot2)
library(plotly)
library("RColorBrewer")

new_election_result <- na.omit(election_result)
dim(new_election_result)

# Scatterplot

gg <- ggplot(election_result, aes(x=State, y=Total.Votes)) + 
  geom_point(aes(col=State)) + 
  geom_smooth(se=F) + 
  labs(y="Total no of votes", 
       x="State", 
       title=" State Vs Total no of votes")+
  theme_minimal(base_size = 12)
plot(gg)




#glitter plot

theme_set(theme_bw())  # pre-set the bw theme.

plot_jitter <- ggplot(election_result, aes(x=State, y=Total.Votes)) 
plot_jitter+ theme(axis.text.x = element_text(size = 6,angle = 90,hjust = 0.5, vjust = 0.5),legend.text = element_text(size=6))+geom_jitter(aes(col=State),width = .5, size=1) + 
  labs(subtitle="Jittered Points", 
       y="Total no of votes", 
       x="State", 
       title=" State Vs Total votes")



#Here we have filitered the data frame and stored in the variable graph_plotly

graph_plotly <- filter(election_result, State == "Andaman & Nicobar Islands")
p <-ggplot(graph_plotly, aes(x=Party, y=Total.Votes, size=Total.Votes, text = paste("Candidate:", Candidate),fill=Party)) + 
  geom_point(alpha = 1,color = "red") 
ggplotly(p)




#From the graph we can conclude that Indian National Congress party has highest percentage and the candidate name is Kuldeep Rai Sharma. The party which received lowest percentage of vote is All India Hindustan Congress.

#histogram


qplot(election_result$Total.Votes, geom="histogram") 

#qplot(election_result$percent_of_Votes, geom="histogram")

graph_hist <- ggplot(data=election_result, aes(election_result$Percent.of.Votes)) + 
  geom_histogram(breaks=seq(20, 50, by = 2), 
                 col="red", 
                 fill="green", 
                 binwidth = 0.01) + 
  labs(title="Histogram for percentage of Votes") +
  labs(x="percent of Votes", y="Count")
graph_hist


#boxplot

gb <- filter(election_result, State == "Karnataka")
dim(gb)
graph_boxplot <- ggplot(gb, aes(x = Party, y = Total.Votes, fill = Party)) +
  geom_boxplot()+ theme(axis.text.x = element_text(size = 6,angle = 90,hjust = 0.5, vjust = 0.5),legend.text = element_text(size=6))
ggplotly(graph_boxplot)


gb1 <- filter(election_result, State == "Karnataka" & Constituency == "Mandya")
dim(gb1)
graph_boxplot <- ggplot(gb1, aes(x = Party, y = Percent.of.Votes)) +
  geom_boxplot(size = 1,width = 0.6)+ coord_flip()+
  theme(axis.text.x = element_text(size = 6,angle = 90,hjust = 0.5, vjust = 0.5),legend.text = element_text(size=6))
ggplotly(graph_boxplot)


#Barplot

graph_barplot <- filter(election_result, State == "Andaman & Nicobar Islands")
br<-ggplot(graph_barplot, aes(x=Party)) + theme(axis.text.x = element_text(size = 6,angle = 90,hjust = 0.5, vjust = 0.5),legend.text = element_text(size=6))+
  geom_bar(aes(fill = EVM.Votes)) 
br
ggplotly


#Animation
install.packages("gganimate")
library(gganimate)
graph_animate <- filter(election_result, State == "Andaman & Nicobar Islands")
theme_set(theme_bw())  # pre-set the bw theme.
## ggplot(election_result, aes(x=State, y=Total_Votes)) + 
ggplot(graph_animate, aes(x=Party, y=Postal.Votes)) +   
  geom_point(aes(col=Party)) + theme(axis.text.x = element_text(size = 6,angle = 90,hjust = 0.5, vjust = 0.5),legend.text = element_text(size=6))+
  transition_states(Postal_Votes,
                    transition_length = 2,
                    state_length = 1)


plotly_animat2 <- election_result %>%
  plot_ly(
    x = ~Party, 
    y = ~Percent.of.Votes, 
    size = ~Percent.of.Votes, 
    color = ~Party, 
    frame = ~State, 
    text = ~Candidate,
    hoverinfo = "text",
    type = 'scatter',
    mode = 'markers'
  ) 
plotly_animat2 %>% animation_button(
  x = 1, xanchor = "right", y = 0, yanchor = "bottom"
) %>% animation_slider(
  currentvalue = list(prefix = "State ", font = list(color="red"))
)

# Create data for the graph.
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

# Give the chart file a name.
png(file = "city_title_colours.jpg")

# Plot the chart with title and rainbow color pallet.
pie(x, labels, main = "City pie chart", col = rainbow(length(x)))

dev.off()