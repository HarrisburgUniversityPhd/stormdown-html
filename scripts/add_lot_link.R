# This is a hack to fix https://github.com/rstudio/pagedown/issues/191
add_lot_link <- function(caption) {
  t1 <- data.frame(x = c(1))
  t1 <- knitr::kable(t1[F,], caption = caption, format = 'pipe', col.names = c(' '))
  t1 <- c('::: table-norow', '', t1, '', ':::')
  attributes(t1) <- list(format = 'pipe', class = 'knitr_kable')
  t1
}