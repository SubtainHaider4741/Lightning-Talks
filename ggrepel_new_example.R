# My new worked example using ggrepel
# This example uses the mpg dataset from ggplot2.

library(ggplot2)
library(ggrepel)

# Built-in dataset
data(mpg)

# Create a smaller dataset with selected cars to label.
# These are cars with high highway mileage or unusual engine size.
cars_to_label <- subset(mpg, hwy >= 40 | displ >= 6)

# Scatterplot without labels
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  labs(
    title = "Engine Size and Highway Mileage",
    subtitle = "Each point represents a car",
    x = "Engine size",
    y = "Highway miles per gallon"
  )

# Scatterplot with selected labels using ggrepel
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  geom_text_repel(
    data = cars_to_label,
    aes(label = model),
    max.overlaps = 20
  ) +
  labs(
    title = "Using ggrepel to Label Important Cars",
    subtitle = "Labels are added only to selected cars so the graph stays readable",
    x = "Engine size",
    y = "Highway miles per gallon"
  )

# A cleaner version using color by vehicle class
ggplot(mpg, aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  geom_text_repel(
    data = cars_to_label,
    aes(label = model),
    max.overlaps = 20,
    show.legend = FALSE
  ) +
  labs(
    title = "Readable Labels in a ggplot2 Graph",
    subtitle = "ggrepel helps label important points without covering the plot",
    x = "Engine size",
    y = "Highway miles per gallon",
    color = "Vehicle class"
  )
