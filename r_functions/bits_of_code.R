#
set.seed(27081975)
samp_size <- 250
plant_morphs <- sample(c("Purple","Green"), samp_size, replace = TRUE, prob = c(4,6))
mns <- c(Purple = 760, Green = 700)[plant_morphs]
sds <- c(Purple = 160, Green = 150)[plant_morphs]

morph.data <- data.frame(Colour = plant_morphs,
                         Weight = rnorm(samp_size, mns, sds))

t.test(Weight ~ Colour, data = morph.data)

plant_morphs <- morph.data$Colour
samp_size <- length(plant_morphs)
n_samp <- 10000
out <- replicate(n_samp, {
  samp <- sample(plant_morphs, replace = TRUE)
  sum(samp == "Purple") / samp_size
})

hist(out)

sum(out < 0.25) / n_samp

set.seed(123)
x<-rnorm(1000)
x2<-x/3
sd(x)
sd(x2)
sd(x)/3

sd(x)/3 == sd(x2) where x2 is x/3
