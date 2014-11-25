## Plotting the first digit as an image

digit.plot <- function(pixels.data, image.id) {
  pixels.matrix <- unlist(pixels.data[image.id,]);
  image(matrix(pixels.matrix, nrow=28), col=gray((0:255)/255));
}