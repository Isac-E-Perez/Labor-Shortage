library(readr)
library(dplyr)
library(ggplot2)
library(reshape2)
 

# Civilian Labor Force Level 
df <- read.csv("se.csv")   
df$Year <- as.character(df$Year, format="%Y" )   

df <- melt(df, id.vars="Year") 

# Everything on the same plot
ggplot(df, aes(Year,value, col=variable)) +
  geom_point() +
  stat_smooth() +
  labs(title="Civilian Labor Force Level from 16 years and over", 
       subtitle="From the U.S. Bureau of Labor Statistics", x="Year",
       y="Number in thousands")

ggplot(df, aes(Year,value)) +
  geom_point() +
  stat_smooth() +
  facet_wrap(~variable) +
  labs(title="Civilian Labor Force Level from 16 years and over", 
       subtitle="From the U.S. Bureau of Labor Statistics", x="Year", 
       y="Number in thousands")
 
# Employment Level
dt <- read.csv("so.csv")   
dt$Year <- as.character(dt$Year, format="%Y" )   

dt <- melt(dt, id.vars="Year") 

# Everything on the same plot
ggplot(dt, aes(Year,value, col=variable)) +
  geom_point() +
  stat_smooth() +
  labs(title="Employment Level from 16 years and over", 
       subtitle="From the U.S. Bureau of Labor Statistics", x="Year",
       y="Number in thousands")

ggplot(dt, aes(Year,value)) +
  geom_point() +
  stat_smooth() +
  facet_wrap(~variable) +
  labs(title="Employment Level Level from 16 years and over", 
       subtitle="From the U.S. Bureau of Labor Statistics", x="Year", 
       y="Number in thousands")

# Placing graphs together for analysis
ggplot(df, aes(Year,value)) +
  geom_point() +
  geom_point(data = dt, color = "red") +
  stat_smooth() +
  labs(title="Civilian Labor Force Level  = black, Employment Level = red", 
       subtitle="From the U.S. Bureau of Labor Statistics", x="Year", 
       y="Number in thousands")  

# Employed, Usually Work Full Time
di <- read.csv("shi.csv")   
di$Year <- as.character(di$Year, format="%Y" )   

di <- melt(di, id.vars="Year") 

# Everything on the same plot
ggplot(di, aes(Year,value, col=variable)) +
  geom_point() +
  stat_smooth() +
  labs(title="Employed, Usually Work Full Time from 16 years and over", 
       subtitle="From the U.S. Bureau of Labor Statistics", x="Year",
       y="Number in thousands")

ggplot(di, aes(Year,value)) +
  geom_point() +
  stat_smooth() +
  facet_wrap(~variable) +
  labs(title="Employed, Usually Work Full Time from 16 years and over", 
       subtitle="From the U.S. Bureau of Labor Statistics", x="Year", 
       y="Number in thousands")

# Employed, Usually Work Part Time
de <- read.csv("sa.csv")   
de$Year <- as.character(de$Year, format="%Y" )   

de <- melt(de, id.vars="Year") 

# Everything on the same plot
ggplot(de, aes(Year,value, col=variable)) +
  geom_point() +
  stat_smooth() +
  labs(title="Employed, Usually Work Part Time from 16 years and over", 
       subtitle="From the U.S. Bureau of Labor Statistics", x="Year",
       y="Number in thousands")

ggplot(de, aes(Year,value)) +
  geom_point() +
  stat_smooth() +
  facet_wrap(~variable) +
  labs(title="Employed, Usually Work Part Time from 16 years and over", 
       subtitle="From the U.S. Bureau of Labor Statistics", x="Year", 
       y="Number in thousands")

# Placing graphs together for analysis
ggplot(di, aes(Year,value)) +
  geom_point() +
  geom_point(data = de, color = "red") +
  stat_smooth() +
  labs(title="Employed, Usually Work Full Time = black, Employed, Usually Work Part Time = red", 
       subtitle="From the U.S. Bureau of Labor Statistics", x="Year", 
       y="Number in thousands")  

# Unemployment Level
da <- read.csv("su.csv")   
da$Year <- as.character(da$Year, format="%Y" )   

da <- melt(da, id.vars="Year") 

# Everything on the same plot
ggplot(da, aes(Year,value, col=variable)) +
  geom_point() +
  stat_smooth() +
  labs(title="Unemployment Level from 16 years and over", 
       subtitle="From the U.S. Bureau of Labor Statistics", x="Year",
       y="Number in thousands")

ggplot(da, aes(Year,value)) +
  geom_point() +
  stat_smooth() +
  facet_wrap(~variable) +
  labs(title="Unemployment Level from 16 years and over", 
       subtitle="From the U.S. Bureau of Labor Statistics", x="Year", 
       y="Number in thousands")
 