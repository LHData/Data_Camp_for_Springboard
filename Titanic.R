#Below, I've copied the code from the Titanic exercise of Data Camp course "Data Visualization with ggplot2 (Part 1)"
#To get this code to actually run outside the Data Camp environment, I would have to load the ggplot2 package as well as the titanic data
#I loaded both, but the titanic data package did not match Data Camp's versions, so I commented out those lines  
#library(ggplot2)
##library(titanic)

# titanic is avaliable in your workspace
# 1 - Check the structure of titanic
str(titanic)

# 2 - Use ggplot() for the first instruction
ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge")

# 3 - Plot 2, add facet_grid() layer
#the facet_grid line produces identical results if you  write it as "facet_grid(~Survived). However, Data Camp kept telling me 
#there was something wrong with it, so I changed it to the below
ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge") +
  facet_grid(facets =. ~ Survived)

# 4 - Define an object for position jitterdodge, to use below
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

# 5 - Plot 3, but use the position object from instruction 4
#Same note as #3 about facet_grid(~Survived)
ggplot(titanic, aes(x = Pclass, y = Age, col = Sex)) +
  geom_point(size = 3, alpha = 0.5, position = posn.jd) +
  facet_grid(facets = . ~ Survived)

