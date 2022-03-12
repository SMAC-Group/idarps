#' @export
#' @name boxplot_w_points
#' @title boxplot_w_points
#' @param data a vector of numeric values
#' @param horiz logical indicating if the boxplots should be horizontal; default FALSE means vertical boxes.
#' @param main string indicating the title of the plot
#' @param col color of the points to be added to the boxplot
#' @importFrom grDevices col2rgb rgb
#' @importFrom graphics axis boxplot mtext par stripchart
#' @examples
#' \dontrun{
#' x = rnorm(20, mean=5)
#' y = rnorm(20, mean=10)
#' z = rnorm(20, mean=15)
#' boxplot_w_points(x, main = "test")
#' boxplot_w_points(x,y,z, names = c("x","y", "z"), horizontal = F, las=1, main="data")
#' }
boxplot_w_points <- function(..., col =  "#FFB3DACC",
                             col_boxplot ="#d2d2d2",
                             horizontal = F, main = "", names,
                             log = "",
                             las=0
                            ) {


  data = list(...)
  nbr_of_var = length(data)

  min_val <- floor(min(unlist(data)))
  max_val <- ceiling(max(unlist(data)))



  if (horizontal) {
    # Horizontal box plot

    boxplot(data, col = col_boxplot, horizontal = TRUE,
            main = main, names = names, add = F, axes = T,
            outline = F,log=log, las=las)

    # points
    set.seed(123)
    stripchart(data,
      method = "jitter",
      jitter=.2,
      pch = 19,
      cex = 1.2,
      col = col,
      add = TRUE
    )
  } else {

    boxplot(data, col = col_boxplot, horizontal = F,
            main = main, names = names, add = F, axes = T,
            outline = F,log=log, las=las)

    # axis(2)
    set.seed(123)

    # Points
    stripchart(data,
      method = "jitter",
      jitter = .2,
      pch = 19,
      col = col,
      cex = 1.2,
      vertical = TRUE,
      add = TRUE
    )
  }
}
