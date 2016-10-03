sample_plants <- function(samp_sizes, prob) {
  sapply(samp_sizes, function (size) {
    raw_samples <- rbinom(n = 10000, size = size, prob = prob)
    sd(100 * raw_samples / size)
  })
}
