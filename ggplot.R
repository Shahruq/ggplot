library(tidyverse)

#### now we are going to show mpg dataset in R which is already in ggplot pacakage
ggplot2::mpg

#creating a plot for engine size (displ) vs fuel efficiency (mpg)
ggplot(data = mpg)+geom_point(mapping = aes(x=displ, y = hwy))

#another method try
ggplot(mpg, aes(displ,hwy))+geom_point() #aes here is aesthetic - to include size, shape or colour of the points


#let us try some different approaches now


# color
ggplot(mpg, aes(displ,hwy))+geom_point(aes(color = class))

#size
ggplot(mpg, aes(displ,hwy))+geom_point(aes(size = class))

#alpha - transparency, #shape - different shape

#facet-wrap

ggplot(mpg, aes(displ,hwy))+geom_point(aes(color = class))+facet_wrap(~class, nrow = 2)

#smooth plots instead of points
ggplot(mpg, aes(displ,hwy))+geom_smooth(aes(color = class))

ggplot(mpg, aes(displ,hwy))+geom_smooth()+geom_point()

##ultimate point and smooth stuff

ggplot(mpg, aes(displ,hwy))+geom_point(aes(color = class))+geom_smooth() #provides a smooth pattern and line through the data points
ggplot(mpg, aes(displ,hwy))+geom_point(aes(color = class))+geom_smooth(data = filter(mpg, class == "subcompact"), se = F) #smooth only through subcompact cars
ggplot(mpg, aes(displ,hwy))+geom_point(aes(color = class))+geom_smooth(data = filter(mpg, class == "subcompact"), se = T) #se = T brings along the shade

##bar plots, stat counts and legend

ggplot(mpg, aes(year))+stat_count()
