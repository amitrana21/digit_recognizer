## Prepare datasets

train.data <- read.csv('~/code/digit_recognizer/data/train.csv', header=T);
actual.data <- read.csv('~/code/digit_recognizer/data/test.csv', header=T);

dimensions <- dim(train.data)
training.data <- train.data[1:(0.6*dimensions[1]),];
cvalidation.data <- train.data[(0.6*dimensions[1]):(0.8*dimensions[1]),];
testing.data <- train.data[(0.8*dimensions[1]):dimensions[1],];