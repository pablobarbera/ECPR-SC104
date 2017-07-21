doInstall <- TRUE  # Change to FALSE if you don't want packages installed.
toInstall <- c("ROAuth", "streamR", "ggplot2", "stringr",
	"maps", "Rfacebook", "devtools", "quanteda",
	"igraph", "rvest", "httr", "yaml", "reshape", "formatR", "readtext")
if (doInstall) install.packages(toInstall)
if (doInstall) devtools::install_github("netdem-usc/netdemR")
