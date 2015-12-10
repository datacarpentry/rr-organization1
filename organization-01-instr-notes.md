# Instructor notes

## File organization

### Activity 01 - Forensic Science - 30 minutes 

This section starts with an activity to get the learners thinking
about "excavating" a folder in the future.  It is meant to get the
learners thinking about what file names, file organization, and file
content and what these can tell us about a project.  The learners are
given the folder [forensic-science](files/file-org/forensic-science).
Have the learners try to answer questions, while going through the
files. Encourage disscussion of strategies they have been taking that
have worked or do well in their project management.

**Questions**

1.  What type of study is this?
2.  What are the conclusions of this study?
3.  When was this study performed?
4.  What are the questions that this study is trying to answer?
5.  Which files are the data? Which files are the analysis?  Should
    they be separate?
6.  What are the differences between the data files?
7.  What are the differences between the analysis files?
8.  Are the file formats appropriate?
6.  What are some ways that would make answering these questions
    easier? Get them to start discussing how they are currently
    organizing their projects.

**Guide to files in `forensic-science`**

- `data.xlsx`
  + spreadsheet called 'gapminder' is the full dataset
  + spreadsheet called 'subset_1' is the full dataset
  + spreadsheet called 'Australia' is the subset where contintent ==
    "Oceania" (note that Australia is both a country and a continent)
  + spreadsheet called '1982' is the subset where year <= 1982 (the
    spreadsheeet is sorted by life expectancy in ascending order) 

- `data1.xlsx` is missing all data for country == "Australia"

- `data_full.csv` is the same as data1.xlsx (missing all Australia"
  data), but as a csv file

- `oceania.csv` is a subset of the 'gapminderDataFiveYear.tsv' where
  continent == "Oceania"

- `final_analyses.R` was used to make graph.png output
- `final_analyses1.R` will output a similar graph, but only for `year <
  1982`
- `rev1_final_analysis.R` is the same as final_analyses.R

- `graph.png` was created by `final_analyses.R`
- `draft_graph.docx` made in excel using data from cameroon and then
  pasted into a Word file

### Lecture - File Organization

See [File organization slides](slides/organization-slides/).

### Lecture - File Naming 

See [File naming slides](slides/naming-slides/).

