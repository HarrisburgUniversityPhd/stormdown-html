include_grViz <- function(gv_file, width = 600, height = 600) {
  png <- paste0(gv_file, '.tmp.png')
  t1 <- DiagrammeR::grViz(gv_file)
  t1 <- DiagrammeRsvg::export_svg(t1)
  t1 <- charToRaw(t1)
  rsvg::rsvg_png(t1, file = png, width = width, height = height)
  knitr::include_graphics(png)
}
