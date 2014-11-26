## kNN in R

kaggledigits.knn <- function(training.data, actual.data, k) {
  labels <- factor(unlist(training.data$label));
  training.data$label <- NULL;
  
  knn.out <- knn(train.data, test.data, labels, k=5);
  result <- (0:9)[knn.out];
}