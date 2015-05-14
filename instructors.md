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

### Lecture - File Naming 

TO-DO (@jennybc)

## Documenting data modification

### Activity 01 - Checking and Cleaning Data - 30 min

This section considers a single data file with information on two
countries, Australia and New Zealand. The purpose is to get learners
thinking about how to enter data or structure existing data for ease
of use when working in R. They are given a file "oceania_broken.xlsx"
and asked to figure out what is wrong with it. It is most effective if
the instructor puts this up on the screen and talks through the errors
as the learners recognize them. It also introduces the idea of
additional files for storing metadata and tasks related to the data,
both of which should be plain text, which follows along from the
themes discussed in the first activity. **BEFORE** learners start
modifying the file, however, it is important to discuss the idea of
raw data and never changing your only copy of something. So, first
duplicate the file so that you can always refer back to the original
if needed.

**Things that need to be fixed:**

1. Delete the first two rows (rows 1-2). Move row 1 it to a
   `oceania_metadata.txt` file.
    * *Point to make: First row should be column headers, but we don't
      want to lose metadata, so instead move it to a separate text
      file. This makes the file sort alphabetically with the data file,
      and other people will know they are associated since they share
      a name prefix.*
    
2. Change "continent" row header back to "country" in column A, and
   insert column "continent" between C and D. 
    * *Point to make: Analyzing the similar observations in a
      consistent and reproducible way is much more straightforward if
      all observations of the same type are in the same form. This
      includes making properties explicit that are implied for some
      data (Australia is also a continent) but not others.*

3. Move comments below the bottom of the table to a oceania_tasks.txt
   file.
    * *Point to make: For R and other data analysis software, when
      reading in data, columns don't stop at an empty line. Text notes
      that aren't mean to be subject to analysis operations should be
      in a separate text file, not following after the data.*
    
4. Move United Kingdom data so that it falls in the same columns as
   the Australia data.
   * *Point to make: In a spreadsheet of data, each row should be
     exactly one observation, and each column should be a
     data property for the observation. This precludes having multiple
     tables next to each other.*

5. Change column B from "5-year period" to "year". Also change column
   names for D and E to alphanumeric-only, and no spaces.
    * *Point to make: R column headers cannot start with numbers,
      although they can include numbers (just not at the
      beginning). Also, to have the greatest interoperability with the
      widest range of data analysis software, use alphanumeric
      characters only for column names. Think of a column name as a
      column identifier, not complex metadata for the column.*

6. Fix cell A13 from misspelled "Australa" to "Australia".
    * *Point to make: For categorical variables the spelling has to be
      exactly identical for R to parse them correctly. There is no
      country or continent named "Australa", so in this case this
      happens to be an easy fix.*

7. Change blank cells, space-only, N/A, and -9999 values to NA.
    * *Point to make: All statistical analyses systems have a special
      value for missing data. For R, this is NA. Other options ("N/A",
      empty string, -9999, etc) will not be treated as missing data
      and can seriously interfere with parsing or analyzing the data.*
    
8. Change capital "O" to a zero in the population size value for UK
   in 1987.
    * *Point to make: Spelling matters. Mistakes can change the type
      of a whole column.*
    
9. Delete column G (empty space, used to be column F).
    * *Point to make: There is no reason to have empty columns
      following (or within) the data.*
    
9. Add column header for notes column (this is now column H).
    * *Point to make: All columns should have headers. It's fine to
      have a column for text notes associated with rows, but make this
      explicit by adding a column header.*
    
10. Fill actual continent values UK.
    * *Point to make: There is no magic code commonly recognized by
      analysis software that says "ditto" or "the same value as
      above". The values need to be there.*
    
11. Change year for UK in the record that follows 1972 to 1972
    (duplicated entry). (You can confirm this by going back to
    original Gapminder dataset.)
    * *Point to make: This one will be hard to catch until one tries
      to graph the data. Wherever data is entered or transferred
      manually, such as in or from lab or field notebooks, such errors
      can and do happen. It's never a bad idea to graph the data for
      basic sanity checks. One can also write programmatic tests that
      ensure certain assumptions indeed do bear out in the data, for
      example in this case that the years are in intervals of 5.*

After these have been fixed and the points have been discussed,
compare the list learners have made documenting the steps they took to
fix the file. Discuss how this is similar to or could be turned into a
script file that did the same things. Take home messages:
* A script file could actually be run to make the changes in addition
  to documenting what was done.
* Also make the point that manually fixing files like we just did by
  hand is feasible for small data sets, but practically impossible for
  data sets of even moderate size. This is another reason why
  scripting these cleaning steps is useful.

Then, demonstrate exporting the xlsx file to csv. Describe why csv or
other plain text data should always be used if possible for the
reasons mentioned in Lesson 1.

## Literate Programming

To start this activity, give a brief introduction to what literate
programming is.

### Activity

Learners open [countryPick4.Rmd](files/lit-prog/countryPick4.Rmd).
This is where they can start alone exploring the script.  Running the
code. Give this around 10 minutes to just run the code and make
graphs.

Guide them to the line where they can change the countries: 

    ```r
    countryName1 <- "India"
    countryName2 <- "United States"
    countryName3 <- "Nigeria"
    countryName4 <- "Germany"
    ```
    
Show them how to look at the data to choose the countries

    ```r
    levels(gapMinder$country)
    ```

After they are familar with the code have them knit a report.  Show
them the different options.

**Exploring input and output files**
