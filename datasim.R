rm(list=ls())

set.seed(2025)

# Number of studies per group
n <- 200

# effect sizes and standard errors for the "with_publication_bias" group
with_publication_bias_effects <- rnorm(n, mean = 0.45, sd = 0.25)
with_publication_bias_se <- runif(n, min = 0.08, max = 0.20)

# "without_publication_bias" group
without_publication_bias_effects <- rnorm(n, mean = 0.20, sd = 0.15)
without_publication_bias_se <- runif(n, min = 0.08, max = 0.20)

# single data frame
group <- rep(c("with_publication_bias", "without_publication_bias"), each = n)
effect_size <- c(with_publication_bias_effects, without_publication_bias_effects)
standard_error <- c(with_publication_bias_se, without_publication_bias_se)

df <- data.frame(
  group = group,
  effect_size = effect_size,
  standard_error = standard_error
)

# export
write.csv(df, "sport.csv", row.names = FALSE)
