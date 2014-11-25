## Logistic Regression in R with Regularization

train.data <- read.csv('~/code/digit_recognizer/data/train.csv', header=T);
test.data <- read.csv('~/code/digit_recognizer/data/test.csv', header=T);

train.matrix <- data.matrix(train.data);
X = train.matrix[,2:ncol(train.matrix)];
y = factor(train.matrix[,1]);

glmnet.out <- glmnet(X, y, family='multinomial');

X.test <- data.matrix(test.data);
labels <- predict(glmnet.out, newx = X.test, type = 'class', s = c(0.0001));
