## 01 File Naming

### Activity 01 - Forensic Science - 30 minutes 

This section starts with an activity to get the students thinking about "excavating" a folder in the future.  It is meant to get the students thinking about what file names, file organization, and file content and what these can tell us about a project.  The students are given the folder [01-forensic-science](./files/01-file-naming).  Have the students try to answer questions, while going through the files. Encourage disscussion of strategies they have been taking that have worked or do well in their project management.

**Questions**

1.  What type of study is this?
2.  What are the conclusions of this study?
3.  When was this study performed?
4.  What are the questions that this study is trying to answer?
5.  Which files are the data? Which files are the analysis?  Should they be seperate?
6.  What are the differences between the data files?
7.  What are the differences between the analysis files?
8.  Are the file formats appropriate?
6.  What are some ways that would make answering these questions easier? Get them to start discussing how they are currently organizing their projects. 

####Guide to files in `01-forensic-science-activity`

- data.xlsx
  + spreadsheet called 'gapminderDataFiveYear.tsv' is the full dataset
  + spreadsheet called 'subset_1' is the full dataset
  + spreadsheet called 'sub2' is the subset of where contintent == "Africa"
  + spreadsheet called '1952' is the subset where year == 1952

- data1.xlsx is missing all data for country == "Australia"

- data_full.csv is the same as data1.xlsx (missing all Australia" data), but as a csv file

- oceania.csv is a subset of the 'gapminderDataFiveYear.tsv' where continent == "Oceania"

**R Script Files**

- final_analyses.R used to make graph.png output
- final_analyses1.R will output a similar graph, but only for year < 1980
- really_final_analyses.R is the same as final_analyses.R

**Graphs**

- graph.png was created from 'final_analyses.R'
- draft_graph.docx made in excel using data from cameroon and then pasted into a word file

### Lecture - File Naming 

TO-DO (@jennybc): Create mini lecture on file naming.  Lecture drafts housed here: [https://github.com/jennybc/organization-and-naming](https://github.com/jennybc/organization-and-naming)