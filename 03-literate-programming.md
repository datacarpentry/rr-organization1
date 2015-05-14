# Literate programming 

### Pre-requisites
- Familarity with RStudio enviroment
- Knowledge of markdown and Rmarkdown syntax

## Learning Objectives

* Describe the concept and purpose of literate programming.
* Contrast literate programming with stand-alone scripts and
  stand-alone documentation.
* Relate literate programming to reproducible generation of scientific
  figures and analysis results.
* Recognize benefits of and opportunities for applying literate
  programming 
* Produce and modify R knitr reports.
* Identify intermediary files, and thus which files can be regenerated.

## Activity 03 - Explore a working `knitr` document

Interactive knitr document: [countryPick4.Rmd](files/lit-prog/countryPick4.Rmd).

**Estimated total time**: 1 hour 25 min

### Introduction

Reading code is often difficult, even if you are the programmer.
Literate programming is an approach to writing code that combines
plain English interspersed with code to help explain the why and how
behind the code. The end result is often a report that provides
narrative to your work. These reports alleviate many of the problems
associating with computational work including
1. making your code pleasurable to read;
2. reduction of tedium and manual processes when making changes to
   experiments;
3. reduction of friction for communication of results;
4. begins the process of writing papers as the data, figures and
   rationale for each project are all in one place and can be copied
   and edited when writing your papers.

Essentially literate programming acts as your lab notebook for your
computational work. As with scientific notebooks, there are many
styles to writing in one. Every project is unique, but the end goal is
always to make it as easy as possible for you and others to reproduce
your work.

In this lesson we are going to use Rstudio to combine R code,
markdown, and `knitr` to create reports that can be saved in many
formats for distribution. Depending on the language you can combine
the same or similar tools for creating literate programming reports,
for example for Python reports, IPython is a powerful option.

#### Step 1: Open `.Rmd` Document and Run Code

Open [countryPick4.Rmd](files/lit-prog/countryPick4.rmd).  This is a
report exploring population size of four countries.

Save this document with a new filename. The filename should end in
`.rmd `or `.Rmd`. Use what you have learned from file naming to give
an appropriate new name to this report.

**Goal**: Make the report unique by choosing four new countries.
Explore a few countries and try to find a combination that shows you
something unique about the data. Read through report while running
each of the code chunks.

* _Stretch Goal:_ If you are familiar with R and `ggplot`, try adding a
  fifth country to this report.

#### Step 2: Save new report and knit

Click on “Knit HTML” or do File > Knit. RStudio should display a
preview of the resulting HTML. Also look at the file browser (which
should be pointed at the directory where you saved the `.Rmd` file).
You should see the R Markdown document, i.e. `foo.Rmd` _and_ the
resulting HTML `foo.html`.

* Distinguish what was the input and output in creating this
  document. What role did the `.Rmd` file take and what the `.html`
  file?
* Which file can you delete while still being able to fully
  reproduce the result? What are all the files that are needed to
  re-create the `.html` file?

#### Step 3: Develop your report

In this incremental manner, develop a new report. Add new code to this
file. Refine it. Add new chunks. Re-run the report frequently to make
sure it works.

Sometimes left-over objects in the workspace make a report appear to
fail even though it is correct. Clean out your workspace, restart R,
and re-run everything if you see weird failures. There are lots of
chunk menu items and keyboard shortcuts to accelerate this workflow.
Render the whole document often to catch errors when they’re easy to
pinpoint and fix. Save often every time you reach a point that you’d
like as a “fall back” position.

#### Step 4: Publishing your report

Although not required, one of most accessible and often easiest ways
to share Rmarkdown reports is over the web. [Rpubs](http://rpubs.com/)
is a free database of R knitr documents, and makes it very easy to
publish your knitr documents, especially when using Rstudio. In
RStudio, create a new R Markdown document by choosing File > New > R
Markdown. Click the Knit HTML button in the doc toolbar to preview
your document. In the preview window, click the Publish button. Browse
recently published reports at [Rpubs](http://rpubs.com/).

Another popular option is [Github](http://github.com), which allows
the publication and hosting of `.md` files for free. Github also
provides the power of version control through Git.

### Troubleshooting 

Make sure RStudio and the `rmarkdown` package (and its dependencies)
are up-to-date. In case of catastrophic failure to render R Markdown,
consider that your software may be too old. R Markdown has been
developing rapidly (written 2014-09), so you need a very current
version of RStudio and `rmarkdown`.

You may need to get rid of your `.Rprofile`, at least
temporarily. Specifically, if you’ve got anything in there relating to
`knitr`, `markdown`, `rmarkdown` and RStudio stuff, it may be
preventing the installation or usage of the most recent
versions.

Insert a chunk in your `.Rmd` document so that it renders even when
there are errors. Some errors are easier to diagnose if you can
execute specific R statements during rendering and leave more evidence
behind for forensic examination. Put this chunk:

    ```{r setup, include = FALSE, cache = FALSE}
    knitr::opts_chunk$set(error = TRUE)
    ```

near the top of your R Markdown document if you want to the report to
run in full even if there are errors, i.e. turn `foo.Rmd` into
`foo.md` and/or `foo.html` no matter what.

Check whether your working directory is set correctly. Drop these
commands into R chunks to check the above: `getwd()` will display
working directory at run time. 

[Don’t try to change working directory within an R Markdown document](https://github.com/yihui/knitr/blob/master/FAQ.md). And
don’t be in a hurry to create a complicated sub-directory
structure. RStudio/knitr/rmarkdown (which bring you the “Knit HTML”
button) are rather opinionated about the working directory being set
to the `.Rmd` file’s location and about all files living together in
one big happy directory. 

## Resources

* [Knitr Cheat Sheet] - cheat sheet for knitr code.
* [Ipython] - Powerful option for writing literate programming in
  Python and other languages.

## Credits

* This material was adapted from [an activity by Jenny Bryan](http://stat545-ubc.github.io/block007_first-use-rmarkdown.html).

[knitr Cheat Sheet]: http://cran.r-project.org/web/packages/knitr/vignettes/knitr-refcard.pdf
[Ipython]: http://ipython.org/notebook.html
