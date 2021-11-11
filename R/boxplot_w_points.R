#' @export
#' @name boxplot_w_points
#' @title boxplot_w_points
#' @param data a vector of numeric values
#' @param horiz logical indicating if the boxplots should be horizontal; default FALSE means vertical boxes.
#' @param main string indicating the title of the plot
#' @param col color of the points to be added to the boxplot
#' @param nticks an integer specifying the number of ticks to show
#' @importFrom grDevices col2rgb rgb
#' @importFrom graphics axis boxplot mtext par stripchart
#' @examples
#' \dontrun{
#' set.seed(12456)
#'boxplot_w_points(data = rnorm(100), horiz = TRUE, main="data")
#'set.seed(12456)
#'boxplot_w_points(data = rnorm(100), horiz = FALSE, main="data")
#'}
boxplot_w_points = function(data, col = "#CCCCCC7F", horiz = F, main = "", nticks = 8L){



  # define tick size
  ticks_step = (round(max(data),0) -  round(min(data),0) )/ nticks

  if(horiz){



    # change margin
    par(mar=c(3.8,1,1,1))

    # draw empty plot
    plot(NA, type = 'n', axes = FALSE, ann = FALSE,xaxt = "n", yaxt="n", xlim=c(floor(min(data)), ceiling(max(data))),
         ylim=c(0,2))

    lab_ticks = seq(floor(min(data)), ceiling(max(data)) , by=ticks_step)
    axis(1, at = lab_ticks, labels = as.character(lab_ticks))

    # Horizontal box plot
    boxplot(data, col = "white", horizontal = TRUE, add=T, axes=F, outline = F)

    # Points
    stripchart(data,
               method = "jitter",
               pch = 19,
              cex  =1.2,
               col = col,
               add = TRUE)

    # title
    mtext(main, cex= 1.5, line = -5.5)

  }else{

    # change margin
    par(mar=c(1,5.5,1,1))

    plot(NA, type = 'n', axes = FALSE, ann = FALSE,xaxt = "n", yaxt="n",
         ylim=c(floor(min(data)), ceiling(max(data))),
         xlim=c(0,2))

    lab_ticks = seq(floor(min(data)), ceiling(max(data)), by=ticks_step)
    axis(2, at = lab_ticks, labels = as.character(lab_ticks), las=2)

    # Horizontal box plot
    boxplot(data, col = "white", horizontal = F, add=T, axes=F, outline = F, main=main)

    # Points
    stripchart(data,
               method = "jitter",
               pch = 19,
               col = col,
               cex  =1.2,
               vertical = TRUE,
               add = TRUE)

    # title
    mtext(main, cex= 1.5, line = -1)
  }



  # margin back to default
  par(mar=c(5.1, 4.1, 4.1, 2.1))

}


