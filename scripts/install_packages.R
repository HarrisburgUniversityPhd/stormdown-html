ipkgs <- installed.packages()
pkgs <-
  c(
    'knitr',
    'here',
    'DiagrammeR',
    'DiagrammeRsvg',
    'rsvg')
for(pkg in pkgs) {
  if (!(pkg %in% ipkgs)) {
    install.packages(pkg)
  }
}
rm(ipkgs, pkgs, pkg)
