fertiliser <- read.csv(file = "./data_csv/DIET_EFFECTS.CSV")

newlevs <- c("NitroBlast", "Control", "OrganoPoo", "SuperGrow", "PhosBang")

fertiliser <- fertiliser %>% 
  rename(Fertiliser = Plan, Yield = WeightLoss) %>%
  mutate(Fertiliser = newlevs[Fertiliser], Yield = Yield + 6.7)

write.csv(fertiliser, 
          file = "./data_csv/FERTILISERS.CSV", row.names = FALSE)
