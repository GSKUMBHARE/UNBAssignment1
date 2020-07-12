#Visualizing two variable on XY axis with trendline. we compare wind speed and Temp in first
ggplot(airquality, aes(Temp,Wind)) + geom_point() + geom_smooth( method = "lm")

#we compare solar and ozone
ggplot(airquality, aes(Ozone,Solar.R)) + geom_point() + geom_smooth( method = "lm")

#linear regression with lm (wind and temp)
lm(formula = Wind ~ Temp, data = airquality)

#linear regeression with lm (ozone and solar.r)
lm(formula = Ozone ~ Solar.R, data = airquality)

#finding desity concentration of wind
ggplot(airquality, aes(wind)) + geom_histogram( bins = 15)

#findign density concentration of temp
ggplot(airquality, aes(Temp)) + geom_histogram( bins = 15)

#findign density concentration of Ozone
ggplot(airquality, aes(Temp)) + geom_histogram( bins = 15)

#findign density concentration of Solar ray
ggplot(airquality, aes(Temp)) + geom_histogram( bins = 15)

#Comparing mean
summary_stats <- airquality %>% 
+ group_by(Temp) %>% summarize(byGroup = mean(Wind))

summary_stats

#correlation of the data set
library(ggcorrplot)
> data("airquality")
> corr<- round(cor(airquality),1)
+ head(corr[, 1:6])

#correlation matrix
ggcorrplot(corr)
