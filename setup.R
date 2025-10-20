# setup

packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

packageLoad('tidyverse')

# create a string of package names
packages <- c('tidyverse',
              'palmerpenguins',
              'rmarkdown', 'dplyr', 'magrittr', 'ggplot2', 'ggthemes', 'RColorBrewer', 'viridis', 'ggdark', 'plotly', 'lterdatasampler', 'rstatix', 'lterdatasampler', 'rstatix')
# use the packageLoad function we created on those packages
packageLoad(packages)