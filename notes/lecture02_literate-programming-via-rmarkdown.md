Notes re: a lecture on literate programming by way of explaining RMarkdown

Jenny TO DO

Will build on slides from [a talk at SFU](https://github.com/jennybc/2013-11_sfu) Stats November 2013. Sorry Keynote slides not there :disappointed: so this TODO will involve porting that info into a better format.

Gaps and changes identified via discussion with @naupaka and Kristina Riemer

Outline of slides *currently just key messages and bits*

  * Motivating example: a small report written with Word, possibly based on last exercise from morning
    - E.g., one page report about one country from Gapminder
    - What if you want to change to a different country? Rewrite some text, remake a figure, re-insert new figure.
    - This is a drag and error prone. This is the problem R Markdown can solve.
  * Preview a diagram that will appear repeatedly (in various forms). Here's the most detailed form in words:
    - foo.rmd --> foo.md --> foo.docx or foo.html
    - RMarkdown --> Markdown --> Word or HTML or ...
    - whole process = "Knit HTML" button in RStudio or, in code, `rmarkdown::render()`
    - under the hood, rmd to md is "knitting" via the `knitr` package and md to ??? is done by pandoc
    - conceptually, "knitting" is running chunks of code and dropping the result into the Markdown file -- this is automating what used to be manual drudgery
    - conceptually, the pandoc step allows us to re-use the same analytical code to produce output in different target formats, for different uses and audiences
  * show how rmd, md, docx or html look
    - juxtapose same content in two forms to emphasize what's same and different
    - juxtapose same form (e.g. Markdown) in two settings (e.g. text editor vs on GitHub) to emphasize how current eco-system of tools smile on this workflow
  * approaches for running all or parts of this magical workflow
    - buttons in RStudio
    - commands: `rmarkdown::render()` or the Rscript version
    - how to control output format via RStudio vs YAML frontmatter vs args to `render()`
  * glossary at end, e.g. knitr is an R package, knitting or rendering means to convert from Rmd or md to an eyeball-ready format

