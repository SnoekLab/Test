




library(ggplot2)

use.data <- datasets::airquality
Values <- c(use.data$Ozone,use.data$Solar.R,use.data$Wind,use.data$Temp)
Month <- use.data$Month
Day <- use.data$Day
Parameter <- rep(c("Ozone","Solar rad","Wind","Temp"),each=nrow(use.data))
to.pl <- data.frame(Month,Day,Values,Parameter)

ggplot(to.pl,aes(Day,Values))+
  geom_line()+
  geom_smooth()+
  facet_grid(Parameter~Month,scale="free",space="free_x")






###################### END ###########################################################
