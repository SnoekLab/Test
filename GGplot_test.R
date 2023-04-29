




library(ggplot2)

datasets::airquality
ggplot(datasets::airquality,aes(Day,Temp))+
  geom_line()+
  geom_smooth()+
  facet_grid(.~Month,scale="free_x",space="free_x")






###################### END ###########################################################