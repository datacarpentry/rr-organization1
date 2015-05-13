# Organization 1

## People

-  Jennifer Bryan: [@jennybc]
-  Hilmar Lapp: [@hlapp]
-  **Ciera Martinez** [@iamciera]
-  Kristina Riemer kristina.riemer@weecology.org
-  Courtney Soderberg courtney@cos.io
-  Naupaka Zimmerman naupaka@gmail.com

## Overview and learning objectives

Students will learn the benefits of project and folder organization, and how these enable reproducibility and reusability. They will then complete an activity highlighting the structure of data files, emphasizing the importance of documenting any changes made. Finally, they will bring these two activities together in the context of a reproducible project workflow centered around using `knitr` in RStudio.

At the begining of the session, students should be able

- to use a spreadsheet program to generate a plot
- to use a text editor (Word, Google Docs, etc.) to communicate
- be familiar with Rstudio: Rstudio layout, running R commands, knitr, and basic ggplot syntax (from Intro section)

At the end of the session students will be able to

- Evaluate folder and file structure of a project.
- Recognize common problems that occur in file organization.
- Be able to identify what plain text is.  
- Demonstrate the benefits of using plain text.
- Distinguish between input and output files.
- Integrate file naming standards to projects.
- Distinguish between a spreadsheet formatted properly for later analysis in R and one formatted improperly
- Be able to recognize common data entry errors and how to handle them
- Be able to describe the concept of 'raw data' and why it is important
- Differentiate between manual and programmatic file manipulation and know the pros and cons of each

##01-file-naming

### Activity - Forensic Science

[Link to forensic science lesson](https://github.com/Reproducible-Science-Curriculum/rr-organization1/blob/master/01-file-organization.md)

This section starts with an activity to get the students thinking about "excavating" a folder in the future.  It is meant to get the students thinking about what file names, file organization, and file content and what these can tell us about a project. 

### Lecture - File Naming 

TO-DO (@jennybc): Create mini lecture on file naming.  Lecture drafts housed here: [https://github.com/jennybc/organization-and-naming](https://github.com/jennybc/organization-and-naming) 

##02-programatic-modification

### Activity 2 - Cleaning up data in Excel

[Link to programatic modification lesson](https://github.com/Reproducible-Science-Curriculum/rr-organization1/blob/master/02-programatic-modification.md)

In this section, the students will explore why it is beneficial to do programmatic modification by exploring what it takes to clean up a data file in Excel. 

##Coffee Break

## 03-literate-programming - R via RStudio 

### Activity 

**At the moment there seems to be a lot of overlap with Intro 1 Activity 2. Need to iron out how to proceed.**

Using [countryPick4.rmd](https://github.com/Reproducible-Science-Curriculum/rr-organization1/blob/master/files/03-literate-programming-activity/countryPick4.rmd) as a guide, have the students knit and modify. Guide through how to import data, filter to one country, make a plot and write it to file, commenting that script (Why selecting Germany, not what the subset function is doing), run both using interactive run.  Then the activity will go into what happens when you knit: Preview/Knit HTML, note what sorts of outputs are left behind, discuss input and output files. Which files can we delete and reproduce? Which files are inputs, outputs, converters of inputs to outputs? This section is meant for students to explore the power of writing reports in R. 

TO-DO: Create Lesson guide and instructor guide. 

###Lecture

Wrap up lecuture: [Organizaing Files into Directories Draft](https://github.com/jennybc/organization-and-naming/tree/master/organization)

## Links relevant to items above

#### UBC Library Research Data Management has good resources

- File Naming Conventions & Best Practices <http://researchdata.library.ubc.ca/organize/>
- File Format Considerations <http://researchdata.library.ubc.ca/format/>Links from Jenny relevant to our outline

#### Naming practices

- ISO 8601 standard for dates <http://en.wikipedia.org/wiki/ISO_8601>
- File naming guides and suggestions
    - http://www.exadox.com/en/articles/file-naming-convention-ten-rules-best-practice
    - http://www.mnhs.org/preserve/records/electronicrecords/erfnaming.php
    - http://www.recordsmanagement.ed.ac.uk/InfoStaff/RMstaff/RMprojects/PP/FileNameRules/FileNameRules.htm
    - http://www.recordsmanagement.ed.ac.uk/InfoStaff/RMstaff/RMprojects/PP/FileNameRules/Rules.htm
- Filename extension conventions <http://en.wikipedia.org/wiki/List_of_file_formats>

#### Spreadsheet advice

- Spreadsheet advice from UK's Government Statistical Service Good Practice Team [PDF](https://gss.civilservice.gov.uk/wp-content/uploads/2012/12/Releasing-statistics-in-spreadsheets-Good-practice-guidance.pdf)

#### Paper with lots of good tips

- Nine simple ways to make it easier to (re)use your data by EP White, E Baldridge, ZT Brym, KJ Locey, DJ McGlinn, SR Supp. Ideas in Ecology and Evolution 6(2): 1–10, 2013. [doi:10.4033/iee.2013.6b.6.f] (http://library.queensu.ca/ojs/index.php/IEE/article/view/4608). See the section "Use standard table formats".

## LICENSE and ATTRIBUTION  

- Gapminder data [available here](http://www.gapminder.org/data/). [Gapminder data is licensed CC-BY 3.0](https://docs.google.com/document/pub?id=1POd-pBMc5vDXAmxrpGjPLaCSDSWuxX6FLQgq5DhlUhM#h.ul2gu2-uwathz).
- Processed data via [@jennybc](https://github.com/jennybc), [R package available here](https://github.com/jennybc/gapminder). The [data-raw](https://github.com/jennybc/gapminder/tree/master/data-raw) sub-directory reveals the journey from Gapminder.org's Excel workbooks to increasingly clean and tidy data.
    - cleanest data is in [07_gap-every-five-years.tsv](https://github.com/jennybc/gapminder/blob/master/data-raw/07_gap-every-five-years.tsv)
    - this gives rise to the data.frame provided by the R package
