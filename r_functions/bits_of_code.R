library(multcomp)

diet <- read.csv(file = "./data_csv/DIET_EFFECTS.CSV")

amod <- aov(WeightLoss ~ Plan, data = diet)

tuk <- glht(amod, linfct = mcp(Plan = "Tukey"))

summary(tuk)

tuk.cld <- cld(tuk, decreasing = FALSE)
plot(tuk.cld)
