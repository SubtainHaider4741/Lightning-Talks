


library(ggplot2)
library(ggrepel)

# Built-in dataset
data(mtcars)

mtcars$car_name <- rownames(mtcars)

# Basic ggplot2 labels
ggplot(mtcars, aes(x = wt, y = mpg, label = car_name)) +
  geom_point() +
  geom_text() +
  labs(
    title = "Car Weight vs Miles Per Gallon",
    subtitle = "Using regular geom_text()",
    x = "Weight",
    y = "Miles per gallon"
  )

# Improved labels with ggrepel
ggplot(mtcars, aes(x = wt, y = mpg, label = car_name)) +
  geom_point() +
  geom_text_repel() +
  labs(
    title = "Car Weight vs Miles Per Gallon",
    subtitle = "Using geom_text_repel() from ggrepel",
    x = "Weight",
    y = "Miles per gallon"
  )


