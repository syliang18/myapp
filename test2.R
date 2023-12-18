##########################################
# Add a new script called test.
# Author: Suh-Yuen Liang
# Date: 2023/12/18
# Revision: 2023/12/18
##########################################
library(ggplot2)
library(dplyr)
# show sessioninfo
sessionInfo()

# show dataset 
head(datasets::pressure)

# show line plot
ggplot(pressure, aes(x=temperature, y=pressure))+
  geom_line(colour='blue',linetype=2, size=1)+
  geom_point(colour="black", size=2, show.legend =T)+
  theme_classic()+
  ggtitle('This is a line plot')+
  theme(title=element_text(size=20, face="bold", hjust=0.5),
  axis.title = element_text(size=10,  hjust=0.5))

# show bar plot
head(datasets::CO2)

ggplot(CO2, aes(x=interaction(Type,Plant), y=conc, color=Treatment))+
  geom_boxplot() +
  theme_classic() +
  theme(axis.text.x = element_text(angle=90, hjust=1))

