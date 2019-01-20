library(tidyverse)

#### now we are going to show mpg dataset in R which is already in ggplot pacakage
ggplot2::mpg

#creating a plot for engine size (displ) vs fuel efficiency (mpg)
ggplot(data = mpg)+geom_point(mapping = aes(x=displ, y = hwy))

#another method try
ggplot(mpg, aes(displ,hwy))+geom_point() #aes here is aesthetic - to include size, shape or colour of the points