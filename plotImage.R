## Plotting the first digit as an image

data <- read.csv('~/code/digit_recognizer/data/train.csv', header=T);
data$label <- NULL;
image_matrix <- unlist(data[1,]);

image(matrix(image_matrix, nrow=28), col=gray((0:255)/255))