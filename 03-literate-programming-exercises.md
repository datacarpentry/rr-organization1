## 03 Literate Programming Exercise

### Pre-requisites
- Familarity with RStudio enviroment
- Knowledge of markdown and Rmarkdown syntax

### Learning Objectives

- Explain the purpose of literate programming
- Produce and modify R knitr reports.
- Identify which files are inputs, outputs.
- Identify which files can be deleted for reproduction. 

**Estimated total time**: 1 hour 25 min

###Introduction

Reading code is often difficult, even if you are the programmer. Literate programming is an approach to writing code that combines plain English interspersed with code to help explain the why and how behind the code.  The  end result is often a report that provides narrative to your work. These reports alleviate many of the problems associating with computational work including 1. making your code pleasurable to read  2. reduction of tedium and manual processes when making changes to experiments 3. reduction of friction for communication of results 4. begins the process of writing papers as the data, figures and rationale for each project are all in one place and can be copied and edited when writing your papers.  Essentially literate programming acts as your lab notebook for your computational work. As with scientific notebooks, there are many styles to writing in one.  Every project is unique, but the end goal is always to make it as easy as possible for you and others to reproduce your work. 

In this course we are going to use Rstudio to combine R code, markdown, and `knitr` to create reports that can be saved in many formats for distribution.  Depending on the language you can combine the same or similar tools for creating literate programming reports, for example for Python reports, IPython is a powerful option. 

**Step 1: Open `.Rmd` Document and Run Code**

Open [countryPick4.Rmd](https://github.com/Reproducible-Science-Curriculum/rr-organization1/blob/master/files/03-literate-programming-activity/countryPick4.rmd).  This is a report exploring population size of four countries.  

**Goal**: Make the report unique by choosing four new countries.  Explore a few countries and try to find a combination that shows you something unique about the data. Read through report while running each of the code chunks. 

 * Stretch Goal: If you are familiar with R and `ggplot`, try adding a fifth country to this report. 

**Step 2: Save new report and knit**

Save this document with a new filename. The filename should end in `.rmd `or `.Rmd`.  Use what you have learned from file naming to give an appropriate new name to this report. 

Click on “Knit HTML” or do File > Knit. RStudio should display a preview of the resulting HTML. Also look at the file browser (which should be pointed at the directory where you saved the `.rmd` file). You should see the R Markdown document, i.e. `foo.rmd` AND the resulting HTML `foo.html`.  It is important for you to distinguish what was the input and output in creating this document. In this case the input was your `.Rmd` file and your output is the `.html` file.  Which file can you delete while still being able to fully reproduce the result?  What are all the files that are needed to re-create the `.html` file? 

**Step 3: Develop your report**

In this incremental manner, develop a new report. Add new code to this file.  Refine it. Add new chunks. Go crazy! But keep running the code “manually” to make sure it works. If it doesn't work with you babysitting it, I can guarantee you it will fail, in a more spectacular and cryptic way, when run at arms-length via “Knit HTML” or rmarkdown::render(). Clean out your workspace and restart R and re-run everything periodically, if things get weird. There are lots of chunk menu items and keyboard shortcuts to accelerate this workflow. Render the whole document often to catch errors when they’re easy to pinpoint and fix. Save often every time you reach a point that you’d like as a “fall back” position.

You’ll develop your own mojo soon, but this should give you your first successful R Markdown experience.

**Step 4: Publishing your report** (optional)

Web-friendly is good. Various hosting platforms make it easy to share web- ready products with minimal effort. There is a free database of R knitr documents, [Rpubs](http://rpubs.com/), which makes it incredible easy to publish your knitr documents, especially if you are using Rstudio.  In RStudio, create a new R Markdown document by choosing File > New > R Markdown.
Click the Knit HTML button in the doc toolbar to preview your document. In the preview window, click the Publish button. Browse recently published reports at [Rpubs](http://rpubs.com/).

Another popular option is [Github](http://github.com) allows the publication and hosting of `.md` files for free. Github allows extremely powerful in that it combines the power of version control through Git, although, there is a slight learning curve.

### Troubleshooting 

Make sure RStudio and the `rmarkdown` package (and its dependencies) are up-to-date. In case of catastrophic failure to render R Markdown, consider that your software may be too old. R Markdown has been developing rapidly (written 2014-09), so you need a very current version of RStudio and `rmarkdown` to enjoy all the goodies we describe here.

Get rid of your `.Rprofile`, at least temporarily. I have found that a “mature” `.Rprofile` that has accumulated haphazardly over the years can cause trouble. Specifically, if you’ve got anything in there relating to `knitr`, `markdown`, `rmarkdown` and RStudio stuff, it may be preventing the installation or usage of the most recent goodies (see above). Comment the whole file out or rename it something else and relaunch or reinstall RStudio.

Insert a chunk in your `.rmd` document so that it renders even when there are errors. Some errors are easier to diagnose if you can execute specific R statements during rendering and leave more evidence behind for forensic examination. Put this chunk:

    ```{r setup, include = FALSE, cache = FALSE}
    knitr::opts_chunk$set(error = TRUE)
    ```

near the top of your R Markdown document if you want to soldier on through errors, i.e. turn `foo.rmd` into `foo.md` and/or `foo.html` no matter what. This is also helpful if you are writing a tutorial and want to demo code that throws an error.

Check your working directory. It’s going to break your heart as you learn how often your mistakes are really mundane and basic. Ask me how I know. When things go wrong consider:

*  What is the working directory?
*  Is that file I want to read/write actually where I think it is?

Drop these commands into R chunks to check the above: `getwd()` will display working directory at run time. If you monkeyed around with working directory with, e.g., the mouse, maybe it’s set to one place for your interactive development and another when “Knit HTML” takes over. `list.files()` is also handy for brute force checking of which files are lying around within arm’s reach.

[Don’t try to change working directory within an R Markdown document](https://github.com/yihui/knitr/blob/master/FAQ.md). Just don’t. And don’t be in a hurry to create a complicated sub-directory structure. RStudio/knitr/rmarkdown (which bring you the “Knit HTML” button) are rather opinionated about the working directory being set to the `.rmd` file’s location and about all files living together in one big happy directory. This can all be worked around. But not today.

Lecuture: Wrap up lecuture: [Organizaing Files into Directories Draft](https://github.com/jennybc/organization-and-naming/tree/master/organization)

### Resources

[knitr Cheat Sheet](http://cran.r-project.org/web/packages/knitr/vignettes/knitr-refcard.pdf) - cheat sheet for knitr code.
[Ipython](http://ipython.org/notebook.html) - Powerful option for writing literate programming in Python and other languages.

*This material was adapted from an activity by [Jenny Bryan](http://stat545-ubc.github.io/block007_first-use-rmarkdown.html).**
