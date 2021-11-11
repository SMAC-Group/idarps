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
#' set.seed(12456)
#' boxplot_w_points(data = rnorm(100), horiz = TRUE, main = "data")
#' set.seed(12456)
#' boxplot_w_points(data = rnorm(100), horiz = FALSE, main = "data")
#' }
boxplot_w_points <- function(data, col = "#CCCCCC7F", horiz = F, main = "") {

  # set.seed(123)
  # data = rnorm(100)
  # col = "#CCCCCC7F"
  # horiz = F
  # main = ""

  min_val <- floor(min(data))
  max_val <- ceiling(max(data))

  if (horiz) {
    # change margin
    par(mar = c(3.8, 2, 1, 2))

    # draw empty plot
    plot(NA,
      type = "n", axes = FALSE, ann = FALSE, xaxt = "n", yaxt = "n",
      xlim = c(min_val, max_val),
      ylim = c(0, 2)
    )
    #axis
    axis(1)
    # Horizontal box plot
    boxplot(data, col = "white", horizontal = TRUE, add = T, axes = F, outline = F)

    # Points
    stripchart(data,
      method = "jitter",
      pch = 19,
      cex = 1.2,
      col = col,
      add = TRUE
    )

    # title
    mtext(main, cex = 1.5, line = -5.5)
  } else {

    # change margin
    par(mar = c(1, 5.5, 3, 1))

    plot(NA,
      type = "n", axes = FALSE, ann = FALSE, xaxt = "n", yaxt = "n",
      ylim = c(min_val, max_val),
      xlim = c(0, 2)
    )


    # vertical box plot
    boxplot(data, col = "white", horizontal = F, add = T, axes = F, outline = F, main = main)
    axis(2)
    # Points
    stripchart(data,
      method = "jitter",
      pch = 19,
      col = col,
      cex = 1.2,
      vertical = TRUE,
      add = TRUE
    )

    # title
    mtext(main, cex = 1.5, line = .8)
  }
  # margin back to default
  par(mar = c(5.1, 4.1, 4.1, 2.1))
}


