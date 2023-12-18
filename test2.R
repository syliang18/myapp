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
  geom_line()