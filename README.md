# Organization 1

## Overview and learning objectives

Students will learn the benefits of project and folder organization,
and how these enable reproducibility and reusability. They will then
complete an activity highlighting the structure of data files,
emphasizing the importance of documenting any changes made. 

At the begining of the session, students should be able

- to use a spreadsheet program to generate a plot
- to use a text editor (Word, Google Docs, etc.) to communicate

At the end of the session students will be able to

- Evaluate folder and file structure of a project.
- Recognize common problems that occur in file organization.
- Be able to identify what plain text is.
- Demonstrate the benefits of using plain text.
- Distinguish between input and output files.
- Integrate file naming standards to projects.

## File organization

### Activity - Forensic Science

Lesson: [01-file-organization](01-file-organization.md)

This section starts with an activity to get the students thinking
about "excavating" a folder in the future.  It is meant to get the
students thinking about what file names, file organization, and file
content and what these can tell us about a project.

### Lecture - File Naming 

Slides can be found here, in Keynote format, in PDF, and as individual
PNGs (scroll down through the README):

  * [File organization](slides/organization-slides)
  * [File naming](slides/naming-slides)

## Resources and useful links

### Relevant scientific papers

- EP White, E Baldridge, ZT Brym, KJ Locey, DJ McGlinn, SR
  Supp (2013) "Nine simple ways to make it easier to (re)use your
  data." Ideas in Ecology and Evolution 6(2):
  1–10, 2013. doi:[10.4033/iee.2013.6b.6.f] _(in particular the
  section "Use standard table formats")_
- WS Noble (2009) "A Quick Guide to Organizing
  Computational Biology Projects." PLoS Computational Biology 5 (7):
  e1000424. doi:[10.1371/journal.pcbi.1000424]

### File naming and organization 

- [File Naming Conventions & Best Practices] (UBC Library, Research
  Data Management)
- [File Format Considerations] (UBC Library, Research Data Management)
- File naming guides and suggestions from
    - [Minnesota Historical Society](http://www.mnhs.org/preserve/records/electronicrecords/erfnaming.php)
    - [University of Edinburgh, Records Management](http://www.recordsmanagement.ed.ac.uk/InfoStaff/RMstaff/RMprojects/PP/FileNameRules/Rules.htm)
- Wikipedia entry on [list of filename extensions]
- Wikipedia entry on [ISO 8601 standard for dates]

## People and credits

This lesson was first created at the [1. Reproducible Science Curriculum Hackathon]. The corresponding author is **Ciera Martinez** [@iamciera]. See the commit log for other contributors.

Please post feedback and issues with the lesson on the repository's issue tracker. For instructor questions about teaching this lesson, you can also contact the corresponding author directly.

## License and Attribution

- [Gapminder data](http://www.gapminder.org/data/). [Gapminder data is licensed CC-BY 3.0](https://docs.google.com/document/pub?id=1POd-pBMc5vDXAmxrpGjPLaCSDSWuxX6FLQgq5DhlUhM#h.ul2gu2-uwathz).
- Processed and subset (population size, life expectancy, GDP per
  capita; only every 5 years only starting 1952, only complete records)
  [Gapminder data as R package](https://github.com/jennybc/gapminder). The [data-raw](https://github.com/jennybc/gapminder/tree/master/data-raw) sub-directory reveals the journey from Gapminder.org's Excel workbooks to increasingly clean and tidy data.
    - clean dataset can be located in R in the following way (after
      installing the package):

        ```R
        pathToTsv <- system.file("gapminder.tsv", package = "gapminder")
        ```

- All other lesson material is dedicated to the public domain under
  the [CC Zero] waiver.

[@iamciera]: http://github.com/iamciera
[File Naming Conventions & Best Practices]: http://researchdata.library.ubc.ca/organize
[File Format Considerations]: http://researchdata.library.ubc.ca/format/
[List of filename extensions]: http://en.wikipedia.org/wiki/List_of_file_formats
[ISO 8601 standard for dates]: http://en.wikipedia.org/wiki/ISO_8601
[Good practice guidance on releasing statistics in spreadsheets]: https://gss.civilservice.gov.uk/wp-content/uploads/2012/12/Releasing-statistics-in-spreadsheets-Good-practice-guidance.pdf
[10.4033/iee.2013.6b.6.f]: http://dx.doi.org/10.4033/iee.2013.6b.6.f
[10.1371/journal.pcbi.1000424]: http://dx.doi.org/10.1371/journal.pcbi.1000424
[CC Zero]: https://creativecommons.org/publicdomain/zero/1.0/
[1. Reproducible Science Curriculum Hackathon]: https://github.com/Reproducible-Science-Curriculum/Reproducible-Science-Hackathon-Dec-08-2014

