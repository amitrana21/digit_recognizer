## Misclassification error

kaggledigit.misclasserr <- function(actual, expected) {
  actual.length <- length(actual);
  expected.length <- length(expected);
  if( actual.length == expected.length) stop('the vectors of actual and expected values should have the same length');
  return((Reduce(sum, actual == expected))/(actual.length));
}