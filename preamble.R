library(dplyr)
library(ggplot2)
library(magrittr)

# Set plotting to bw plot default, but with transparent background elements. Note
# transparency requires the panel.background, plot.background, and device background
# all be set!

theme_update(plot.background = element_rect(fill = "transparent", colour = NA))


