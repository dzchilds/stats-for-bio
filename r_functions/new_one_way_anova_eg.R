library(dplyr)
library(ggplot2)
library(agricolae)

## 0. read in the data 

fertiliser <- read.csv(file = "./data_csv/FERTILISERS.CSV")

glimpse(fertiliser) # <- wheat yields for different fertilisers
View(fertiliser) # <- one control fertiliser, 4 new fertilisers

## 1. make a quick visual summary of the data -- bx-wh plot

levords <- c("Control", "OrganoPoo", 
             "NitroBlast", "PhosBang", "SuperGrow")

plt_data <- 
  fertiliser %>% 
  mutate(Fertiliser = factor(Fertiliser, levels = levords)) 

ggplot(data = plt_data, aes(y = Yield, x = Fertiliser)) + 
  geom_boxplot() + 
  xlab("Fertiliser treatment") + ylab("Wheat yield (t/ha)")


## ~~ 2 ~~ fit the model with 'lm'
##
## Yield = dependent variable, Fertiliser = independent variable
## we use `lm` to fit the model -- R will carry out ANOVA because
## Fertiliser is a *factor*

fertiliser_mod <- lm(Yield ~ Fertiliser, data = fertiliser)

## ~~ 3 ~~ check the assumptions
##
## only need normal-qq and scale-location plots
## (residuals vs. fitted doesn't tell us anything useful)

plot(fertiliser_mod, which = 1, add.smooth = FALSE) # don't need
plot(fertiliser_mod, which = 2, add.smooth = FALSE) # looks good
plot(fertiliser_mod, which = 3, add.smooth = FALSE) # looks good

## ~~ 4 ~~ carry out the global test of significance
##
## null hypothesis => all group means are equal

anova(fertiliser_mod) # significant, so reject the null hypothesis


## ~~ 5 ~~ multiple comparisons tests (optional)
##
## sensible to do this because the global sig. test was significant
## easiest to use the `HSD.test` function from `agricolae` package

HSD.test(fertiliser_mod, "Fertiliser", console=TRUE)

## two not sig diff groups: 
## 1. NitroBlast, PhosBang, SuperGrow
## 2. OrganoPoo, Control, NitroBlast, PhosBang
## ... so the only fertiliser that is better than control is 'SuperGrow'

## ~~ 6 ~~ written summary of results

# There was a significant effect of fertiliser type on the wheat yield
# (ANOVA: F=5.1; d.f.= 4,35; p<0.01) (Figure 1). The only fertiliser 
# that led to a significantly higher wheat yield than the control was 
# SuperGrow (Tukey multiple comparisons test, p < 0.05).


## ~~ 7 ~~ summary plot means and standard errors

levords <- c("Control", "OrganoPoo", 
             "NitroBlast", "PhosBang", "SuperGrow")

plt_data <- 
  fertiliser %>% 
  mutate(Fertiliser = factor(Fertiliser, levels = levords)) %>%
  group_by(Fertiliser) %>% 
  summarise(Mean = mean(Yield), SE = sd(Yield) / sqrt(n()))

ggplot(data = plt_data, aes(x = Fertiliser)) + 
  geom_point(aes(y = Mean), colour = "steelblue", size = 3) + 
  geom_errorbar(aes(ymin = Mean - SE, ymax = Mean + SE), 
                width = 0.1, colour = "steelblue") + 
  scale_y_continuous(limits = c(7.5, 9.5)) + 
  xlab("Fertiliser treatment") + ylab("Wheat yield (t/ha)")



