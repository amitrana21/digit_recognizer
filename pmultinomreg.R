## Train Logistic Regression in R with Regularization

kaggledigits.pmultinomreg <- function(training.data, actual.data, lambda) {
  training.matrix <- data.matrix(training.data);
  X = training.matrix[,2:ncol(training.matrix)];
  y = factor(training.matrix[,1]);
  
  glmnet.out <- glmnet(X, y, family='multinomial');
  result <- predict(glmnet.out, newx = data.matrix(actual.data), type = 'class', s = lambda )
}