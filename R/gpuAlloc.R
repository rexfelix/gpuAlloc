#' A gpuAlloc function
#'
#' this fubction prevent GPU memory shutdown error, when training model on Tensorflow.
#' @param device if you have multi GPUs, choose one by device index.
#' @keywords GPU memory allocation growth
#' @export
#' @example gpuAlloc(1)
gpuAlloc <- function(device=1) {
  gpu <-tensorflow::tf$config$experimental$get_visible_devices('GPU')[[device]]
  tensorflow::tf$config$experimental$set_memory_growth(device = gpu, enable = TRUE)
}

