This is the course book for the Data Analysis in R course in the Department of Animal and Plant Sciences at the University of Sheffield. It is written using R Markdown and **bookdown** (https://github.com/rstudio/bookdown).

## Notes for the author

*   Do not place files in any directory ending in "_files". This will get moved into "_bookdown_files" and will not be tracked by git.

## To do list

*   Ask students to build their own data frames containing the data in the t-test exercises.

*   Throw in a large sample t-test that is a little non-normal

*   Chi-square GOF chapter needs a reminder that if the counts are in a data frame they need to be extracted with `$`

*   The chi-square exercises are too short...

*   Throw in a t-test in the chi-square exercises to remind people to _think_ about what they are being asked to do.

*   Ask students to evaluate where the warning is coming from in the eye colour / sex exercise, i.e. extract out the expected values. Show them that chi.sq returns an object containing this info.

*   Make the 'classic checks' part of the regression diagnostics section shorter: remove the code and just show the plot with the data and fitted line. Students seems to think they have to do all this as well as use 'plot' at the moment.
