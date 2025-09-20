# loading
library(usethis)

# checking default branch name
git_default_branch()

# The default branch name is "main."

# I created a new branch using the purple icon with a diamond and two 
# rectangles, naming it DEV and saving/committing/pushing.

# The DEV branch is now active under "Branches" in my repo.

# loading tidyverse()
library(tidyverse)
# readr and ggplot2 are in this package, so I won't load them separately.

# loading the data - I first need to pull the change I made to my repo by adding
# the Olympics.csv file

# That worked! I was stuck before.

olympics <- read.csv("Olympics.csv")

# Yay! Here's a preview:
head(olympics)

# Time to complete the three-part Step 6.

# a. Calculate a new variable, called ‘total.medals’, which is the sum of gold, 
# silver, and bronze, and add it to the Olympic dataset. (2pts)

olympics2 <- olympics %>%
  mutate(
    total.medals = gold + silver + bronze
  )

head(olympics2)


# b. For each country, how many gold medals has it won? (2pts) 

gold_count_by_country <- olympics %>%
  group_by(country) %>%
  summarize(total_gold = sum(gold))

gold_count_by_country

# c. For each year, how many total medals were given out? (2pts)

total_medals_by_year <- olympics2 %>%
  group_by(year) %>%
  summarize(total_medals = sum(total.medals, na.rm = TRUE))

total_medals_by_year

# saving, committing, and pushing changes