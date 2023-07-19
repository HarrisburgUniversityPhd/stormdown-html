# stormdown

A Harrisburg University Dissertation Template for R Markdown.
This version is rendered into an HTML file which you can print or save to PDF using [Chrome]()'s built in features.
If you want the LaTeX version, that can be found [here](https://github.com/HarrisburgUniversityPhd/stormdown-latex)

# Requirements

* [R](https://cran.rstudio.com) and [RStudio version 2021.09.1 or higher](https://www.rstudio.com/products/rstudio/download/#download)
* The R packages `pagedown` and `here` (the other packages you need should be automatically installed when you build this project for the first time in RStudio)

Open RStudio and run the following command:

```{r}
install.packages(c('pagedown', 'here', 'knitr', 'kableExtra', 'DiagrammeR', 'DiagrammeRsvg', 'rsvg'))
```
## Linux/Chrome

If you are trying to install `stormdown` in Ubuntu environment, you might be missing the following libraries:

```{bash}
sudo apt-get install libssl-dev
sudo apt-get install libxml2-dev
sudo apt-get install libfontconfig1-dev
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install librsvg2-dev
```

# Getting your own copy

In order to use `stormdown`, you can either download it locally or use GitHub.

To download `stormdown` and work locally use the following steps:

1. Navigate to the main [GitHub page](https://github.com/HarrisburgUniversityPhd/stormdown-html) for `stormdown`
2. Click the down chevron on the green button labeled "Code" on the right hand side of the page
   Select "download zip"
3. Save the zip file locally
4. Unzip the contents to your desired location
5. Remove the _README.md_ file
6. Remove or replace the _LICENSE_ file
7. Enjoy

To use GitHub as a long term storage location for your dissertation use the following steps:

01. Navigate to **YOUR** GitHub
02. Click on the "Repositories" tab in the upper middle of the page
03. Click the green button labeled "New" on the right hand side of the page
04. Click on the "Import a repository" link on the top of the page
05. Enter the following information into the form
    * "Your old repository’s clone URL" : https://github.com/HarrisburgUniversityPhd/stormdown-html
    * "Repository Name" : "MyDissertation".
      You can change the name to something else if you prefer
    * "Privacy" : Private
06. Click the button labeled "Begin import"
07. Wait
08. Use your favorite git client to sync the GitHub copy of `srtormdown` to your local PC
09. Remove the _README.md_ file
10. Remove or replace the _LICENSE_ file
11. Enjoy

# Knit'ing your dissertation

`stormdown` is built on top of [`pagedown`](https://pagedown.rbind.io) which is built on top of [`bookdown`](https://bookdown.org/yihui/bookdown) which is built on top of [`rmarkdown`](https://bookdown.org/yihui/rmarkdown) which is the R flavor of [Markdown](https://www.markdownguide.org/).
All the syntax can be found in those resources.
The initial knit of `stormdown` also contains several examples for tables, figures, and flowcharts.
These inline examples can be found in the _/publications/pub(1-3)/paper/results.rmd_ files.

In order to make the initial knit of `stormdown` use the following steps:

1. Navigate to the local folder containing `stormdown`
2. Double-click on _index.rmd_.
   This will open RStudio with the current working directory set to the folder containing _index.rmd_ 
3. Click the blue button labeled "knit"
4. Wait
5. Close RStudio's HTML browser
6. Open _index.html_ in Chrome or Edge.
4. Enjoy

**NOTE**: Some installs of RStudio may be different than others.
If you have a problem with knit'ing, look at the packages found in _/scripts/install_packages.R_.
You may need to install those by manually one at a time
