# using fil in codeR-kevin
pacman::p_load(dplyr,ggplot2,knitr)

knitr::knit(input = "2017-11-20-take-and-tell.Rmd",
            output = "2017-11-20-take-and-tell.md")

knitr::knit(input = "License.Rmd",
            output = "License.md")
