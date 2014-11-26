## kNN in R

kaggledigits.knnInR <- function(training.data, actual.data, k_value) {
  labels <- factor(unlist(training.data$label));
  training.data$label <- NULL;
  
  knn.out <- knn(training.data, actual.data, labels, k= k_value );
  result <- (0:9)[knn.out];
}