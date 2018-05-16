#Day 3. Module 5. Project Managament

#Created GitHub acct, added the mers data file (csv) to this project

#Next exercise is to create a new script and load in the mers data and make a plot
#copied from day 1 first exercise

library(lubridate)
library(ggplot2)

setwd('~/./mers')
mers <- read.csv('cases.csv')
head(mers)
class(mers$onset)
head(mers$onset)
mers$hospitalized[890] <-('2015-02-20')
mers <- mers[-471,]
mers$onset2 <- ymd(mers$onset)
mers$hospitalized2 <- ymd(mers$hospitalized)
class(mers$onset2)
day0 <- min(na.omit(mers$onset2))
mers$epi.day <- as.numeric(mers$onset2 - day0)

ggplot(data=mers) + 
  geom_bar(mapping=aes(x=epi.day)) +
  labs(x='Epidemic day', y='Case count', 
       title='Global count of mERS cases by date of symptom onset', 
       caption="Data from https://github.com/rambaut/MERS-Cases/blob/gh-pages/data/cases.csv")

#Now files are in local directory but not in GitHub. Need to "commit" the changes
#and then 'Push" the chnages to GitHub