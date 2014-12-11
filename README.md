###Organization 1

- Activity 1:  Forensic Science - Give the students collection of files: cryptic, similar file names to different files, poorly named, "superFINAL3.doc", spreadsheet format from really old excel or numbers, some graph images. Have them figure out whats going on. What's the raw data file, what's the script for the analysis. (Courtney, Kristina)
- Lecture (Jenny)
    + algorithmic thinking (input vs. output, intermediate or derived = output AND input, something that converts input to output)
    + file naming (self-documentation, pay attention to implications for sorting)
    + data is raw (neither overwrite nor duplicate)
    + minimal input and output
    + file formats (text non proprietary, file extensions)
    + Concluding Discussion: is A better than B? why? here's C ... how could you improve it?
- Activity 2 (Naupaka)
    + Broken excel data sheet: Juxtapose typical spreadsheet vs. spreadsheet ready for analysis
    + How are they different? Why is one more suitable for analysis than the other?
    + Take away: If you can design away deficiences in data collection, DO! If too late for that, consider if this is a "one-time" cleaning or a potentially repeated task. Protip: it's probably the latter. Best practice is to clean with a script, not point and click.
    + Hands-on. Fix the broken excel data sheet. Everyone take notes on how to document
    + show them how to export to .csv
    + Reference to Excel data carpentry lesson 
- R via Rstudio (assuming they've seen this IDE earlier) (Jenny re: lecture; rest will wait to see concrete details on what group 1 produces re: an Rmd file)
   + Slides on what is literate program
   + simple `.R` script, e.g. import data, filter to one country, make a plot and write it to file
   + commenting that script (Why selecting sweden, not what the subset function is doing)
   + same actions but embedded in `.Rmd`
   + run both using interactive run, whole file source, Preview/Knit HTML
   + note what sorts of outputs are left behind
   + Wrap-up activity: which files can we delete and reproduce? Which files are inputs, outputs, converters of inputs to outputs?
 

LICENSE and ATTRIBUTION    
Gapminder data [available here](http://www.gapminder.org/data/). [Gapminder data is licensed CC-BY 3.0](https://docs.google.com/document/pub?id=1POd-pBMc5vDXAmxrpGjPLaCSDSWuxX6FLQgq5DhlUhM#h.ul2gu2-uwathz). *note from Jenny: who put this in about Gapminder data being CC-BY 3.0 and where's that coming from?*

Processed data via @jennybc, [R package available here](https://github.com/jennybc/gapminder). The [data-raw](https://github.com/jennybc/gapminder/tree/master/data-raw) sub-directory reveals the journey from Gapminder.org's Excel workbooks to increasingly clean and tidy data.
  
  * cleanest data is in [07_gap-every-five-years.tsv](https://github.com/jennybc/gapminder/blob/master/data-raw/07_gap-every-five-years.tsv)
  * this gives rise to the data.frame provided by the R package

### Links relevant to items above

UBC Library Research Data Management has good resources
  * File Naming Conventions & Best Practices <http://researchdata.library.ubc.ca/organize/>
  * File Format Considerations <http://researchdata.library.ubc.ca/format/>Links from Jenny relevant to our outline

ISO 8601 standard for dates <http://en.wikipedia.org/wiki/ISO_8601>

*is there a good link for ...?* making numeric and lexical order coincide, i.e. 01, 02,..., 10 is stands test of time better than 1, 2, ..., 10

Filename extension conventions <http://en.wikipedia.org/wiki/List_of_file_formats>

Spreadsheet advice from UK's Government Statistical Service Good Practice Team [PDF](https://gss.civilservice.gov.uk/wp-content/uploads/2012/12/Releasing-statistics-in-spreadsheets-Good-practice-guidance.pdf)

Nine simple ways to make it easier to (re)use your data by EP White, E Baldridge, ZT Brym, KJ Locey, DJ McGlinn, SR Supp. Ideas in Ecology and Evolution 6(2): 1–10, 2013. doi:10.4033/iee.2013.6b.6.f <http://library.queensu.ca/ojs/index.php/IEE/article/view/4608>. See the section "Use standard table formats".
