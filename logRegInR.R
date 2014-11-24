## Logistic Regression in R

data <- read.csv('~/code/digit_recognizer/train.csv', header=T)

y01 <- function(value) {
  if(value == 0) 1 else 0
}

y.zero = lapply(seq_along(data$label), y01(x, 0))

