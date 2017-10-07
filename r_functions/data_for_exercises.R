## What form do sampling distributions take?


set.seed(27081975)
n <- 2000
x1 <- rlnorm(n, sdlog = 0.3); x1 <- x1/mean(x1)
x2 <- rlnorm(n, sdlog = 0.6); x2 <- x2/mean(x2)
x3 <- rlnorm(n, sdlog = 0.9); x3 <- x3/mean(x3)
out <- data.frame(Population = rep(LETTERS[1:3], each = n),
                  Values = c(x1, x2, x3))
write.csv(out, file = "../data_csv/SKEWED_POPULATIONS.CSV", row.names = FALSE)


## Sample size and statistical power

set.seed(27081975)
nsamp <- 5000

pop_info_1 <- data.frame(
  Population = rep(LETTERS[1:2], each = nsamp),
  Values     = c(rnorm(nsamp, mean = 10, sd = 4), rnorm(nsamp, mean = 11, sd = 4))
)
write.csv(pop_info_1, file = "./data_csv/TWO_POPS_1.CSV", row.names = FALSE)

pop_info_2 <- data.frame(
  Population = rep(LETTERS[1:2], each = nsamp),
  Values     = c(rnorm(nsamp, mean = 10, sd = 2), rnorm(nsamp, mean = 11, sd = 2))
)
write.csv(pop_info_2, file = "./data_csv/TWO_POPS_2.CSV", row.names = FALSE)

pop_info_3 <- data.frame(
  Population = rep(LETTERS[1:2], each = nsamp),
  Values     = c(rnorm(nsamp, mean = 10, sd = 4), rnorm(nsamp, mean = 12, sd = 4))
)
write.csv(pop_info_3, file = "./data_csv/TWO_POPS_3.CSV", row.names = FALSE)

