#' @export
#' @name boxplot_w_points
#' @title boxplot_w_points
#' @param ... data vectors to be visualized
#' @param col_points color of the points to be added to the boxplot
#' @param col_boxplot color of the boxplot
#' @param horizontal logical indicating if the boxplots should be horizontal; default FALSE means vertical boxes.
#' @param main string indicating the title of the plot
#' @param names vector of string indicating the group labels which will be printed under each boxplot.
#' @param names vector of string indicating the group labels which will be printed under each boxplot.
#' @param las a numeric value indicating the orientation of the tick mark labels and any other text added to a plot after its initialization. The options are as follows: always parallel to the axis (the default, 0), always horizontal (1), always perpendicular to the axis (2), and always vertical (3).
#' @param xlab a string indicating the x label
#' @param ylab a string indicating the y label
#' @param seed an integer specifying a seed for the random jitter of the boxplot points
#' @param jitter_param a double specifying the amount of jittering applied on points.
#' @importFrom grDevices col2rgb rgb
#' @importFrom graphics axis boxplot mtext par stripchart
#' @examples
#' x <- rnorm(20, mean = 5)
#' y <- rnorm(20, mean = 10)
#' z <- rnorm(20, mean = 15)
#' boxplot_w_points(x, main = "test")
#' boxplot_w_points(x, y, names = c("x", "y"), las = 1, main = "Data")
#' boxplot_w_points(x, y, z, names = c("x", "y", "z"), horizontal = TRUE, las = 1, main = "Data")
#' boxplot_w_points(x, y, z, names = c("x", "y", "z"), horizontal = FALSE, las = 1, main = "Data")
boxplot_w_points <- function(...,
                             col_points = "#9033FF3F",
                             col_boxplot = "#d2d2d2",
                             horizontal = F,
                             main = "",
                             names = NULL,
                             las = 0,
                             xlab = "",
                             ylab = "",
                             seed = 123,
                             jitter_param = .25) {


  # list all vectors
  data <- list(...)

  # check equal dimension between # of vectors provided and length of argument names if provided
  # provide error if so
  if (is.null(names) && (length(names) != length(data))) {
    names = as.character(substitute(...()))
  }

  # boxplot all vectors
    boxplot(data,
            col = col_boxplot,
            horizontal = horizontal,
            main = main,
            names = names,
            las = las,
            xlab = xlab,
            ylab = ylab,
            add = F,
            axes = T,
            outline = F,
            ylim = range(data)
    )



  # points
  set.seed(seed)
  stripchart(data,
    method = "jitter",
    jitter = jitter_param,
    pch = 19,
    cex = 1.2,
    col = col_points,
    add = TRUE,
    vertical = !horizontal
  )
}


# # test
# x <- rnorm(20, mean = 5)
# y <- rnorm(20, mean = 10)
# z <- rnorm(20, mean = 15)
# boxplot_w_points(x, main = "test")
# boxplot_w_points(x, y,  names = c("x", "y"), horizontal = T, las = 1, main = "r")
