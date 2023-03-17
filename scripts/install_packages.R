# current packages
ipkgs <- installed.packages()

# tables
pkgs_table <- c('knitr', 'kableExtra')
# figures
pkgs_figure <- c('knitr')
# flowcharts
pkgs_chart <- c('knitr', 'DiagrammeR', 'DiagrammeRsvg', 'rsvg')

install_needed <- function(pkgs) {
  for(pkg in pkgs) {
    if (!(pkg %in% ipkgs)) {
      install.packages(pkg, repos='http://cran.us.r-project.org')
    }
  }
}

install_needed(pkgs_table)
install_needed(pkgs_figure)
install_needed(pkgs_chart)

rm(ipkgs, pkgs_table, pkgs_figure, pkgs_chart, install_needed)
