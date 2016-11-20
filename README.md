This is the course book for the Data Analysis in R course in the Department of Animal and Plant Sciences at the University of Sheffield. It is written using R Markdown and **bookdown** (https://github.com/rstudio/bookdown).

## Notes for the author

*   Do not place files in any directory ending in "_files". This will get moved into "_bookdown_files" and will not be tracked by git.

## To do list (organisation of the book)

*   Place the experimental design stuff into its own section (probably just before the _t_-test section)

*   Placce all references to experimental design in the learning from data chapter into their own section at the end.

*   Move the categorical data analysis section to the end of the book.

*   Move the one- vs. two-tailed discussion to SM or designate it 'non-assessed' 

## To do list (small changes)

*   Use the phrase distributional assumptions throughout to refer to normality and homoskedasticity assumptions. Make sure the assumptions are expresssed in terms of the residuals rather than "data".

*   Ask students to build their own data frames containing the data in the t-test exercises.

*   Throw in a large sample t-test where the sample distribution is a little non-normal.

*   Chi-square GOF chapter needs a reminder that if the counts are in a data frame they need to be extracted with `$`

*   The chi-square CT test chapter needs the plotting stuff for presentation of results.

*   The chi-square exercises are too short...

*   Throw in a t-test in the chi-square exercises to remind people to _think_ about what they are being asked to do.

*   Ask students to evaluate where the warning is coming from in the eye colour / sex exercise, i.e. extract out the expected values. Show them that chi.sq returns an object containing this info.

*   Make the 'classic checks' part of the regression diagnostics section shorter: remove the code and just show the plot with the data and fitted line. Students seems to think they have to do all this as well as use 'plot' at the moment.

*  Remove rough checking of assumptions from one way anova and make that section about understanding the patterns. It confuses students -- they're not sure which methoid to use to evaluate assumptions.

*  Remind them that the dignostics are based on the residuals in the anova diagnostics.

*  Include ANOVA tables in the presentation of results sections.

*  Change 'dependent' to 'response' throughout, AND use 'dependent' in the anova sections to hammer home the all models are lm's

* Remove all references to 'non-parametric correlation' in the regression/correlation chapter, move Spearman's rho stuff to the non-parametric tests chapter (and rememebr to revise the exercises)
