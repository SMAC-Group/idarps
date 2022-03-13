#' @export
#' @name hist_compare_to_normal
#' @title hist_compare_to_normal
#' @param x data vector to be visualized
#' @param col color of the histogram
#' @param main string indicating the title of the plot
#' @param las a numeric value indicating the orientation of the tick mark labels and any other text added to a plot after its initialization. The options are as follows: always parallel to the axis (the default, 0), always horizontal (1), always perpendicular to the axis (2), and always vertical (3).
#' @param xlab a string indicating the x label
#' @param ylab a string indicating the y label
#' @param add_estimated_param a Boolean if the estimated parameters of the Normal distribution should be plotted
#' @param legend_position a string specifying the position of the legend.
#' @examples
#' n <- 1000
#' x <- rnorm(n = n)
#' hist_compare_to_normal(x)
#' x2 <- rexp(n, rate = 25)
#' hist_compare_to_normal(x2, legend_position = "topright")
hist_compare_to_normal <- function(x,
                                   col = "lightgray",
                                   main = "", xlab = "",
                                   ylab = "",
                                   lwd_line = 1.5,
                                   col_line = "#ff160e",
                                   add_estimated_param = T,
                                   legend_position = "topleft",
                                   ...) {
  # x = rnorm(1000)
  # col = "lightgray"
  # main = ""
  # xlab = ""
  # ylab = ""
  # lwd_line = 1.5
  # col_line = "#ff160e"
  # add_estimated_param = T
  # legend_position = "topleft"

  # compute min and max
  min_x <- min(x)
  max_x <- max(x)

  # estimate mean and sd
  mean_x <- mean(x)
  sd_x <- sd(x)

  # compute normal density
  xx <- seq(from = min_x, to = max_x, length.out = 500)
  yy <- dnorm(xx, mean = mean_x, sd = sd_x)

  # plot histogram
  h <- hist(x, plot = F)

  # get value ymax
  y_max <- max(c(h$density, yy))

  h <- hist(x,
    col = col, main = main,
    xlab = xlab, ylab = ylab, freq = F,
    xlim = c(min_x, max_x), ylim = c(0, y_max), plot = T
  ) # , ...

  # add line
  lines(x = xx, y = yy, type = "l", col = col_line, lwd = lwd_line)

  # add legend if add_estimated_param
  if (add_estimated_param) {
    legend(legend_position,
      legend = do.call(
        "expression",
        list(
          bquote(bar(x) == .(round(mean_x, 3))),
          bquote(hat(sigma) == .(round(sd_x, 3)))
        )
      ),
      bty = "n", cex = .85
    )
  }
}


# test
# n = 1000
# x <- rnorm(n = n)
# hist_compare_to_normal(x)
# x2 = rexp(n, rate = 25)
# hist_compare_to_normal(x2, legend_position = "topright")
#
