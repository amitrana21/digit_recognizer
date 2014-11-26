## kNN in R
digit
train.data <- read.csv('~/code/digit_recognizer/data/train.csv', header=T);
test.data <- read.csv('~/code/digit_recognizer/data/test.csv', header=T);

labels <- factor(unlist(train.data$label));
train.data$label <- NULL;

knn.out <- knn(train.data, test.data, labels, k=5);
result <- data.frame((0:9)[knn.out]);