## Logistic Regression in R

train.data <- read.csv('~/code/digit_recognizer/data/train.csv', header=T);
test.data <- read.csv('~/code/digit_recognizer/data/test.csv', header=T);

labels_vector <- unlist(train.data$label);

prob.matrix <- matrix(data=NA, nrow=28000, ncol=10);
for (i in 0:9) {
  reg_class <- ifelse(labels_vector == i,1,0);
  train.data$label <- reg_class;
  
  glm.out <- glm(label ~ ., data = train.data, family = "binomial");
  probs <- predict(glm.out, newdata = test.data, type = "response");
  prob.matrix[,i+1] <- probs;
}

head(prob.matrix)