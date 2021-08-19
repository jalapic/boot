### Make a scatterplot
library(tidyverse)

df <- read.csv("raw_data/cheese.csv")

head(df)

p <- ggplot(df, aes(x=chol, y=sat_fat)) + 
  geom_point() +
  theme_minimal()

ggsave("img/cheese_scatter.png", p)
