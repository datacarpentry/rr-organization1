# Organization 1 Instructor Notes

This section is split into three lessons:

1. File Organization
2. Progmatic Modification
3. Literate Programming

The section was created to introduce students how to organize and maintain files. This whole lesson takes place in a single directory, the next section Organization 2, moves into directory structure.  

## 01 File Organization

### Activity 01 - Forensic Science - 30 minutes 

This section start with an activity to get the students thinking about "excavating" a folder in the future.  It is meant to get the students thinking about what file names, file organization, and file content tell us about a project.  The students are given the folder [01-forensic-science](./files/01-forensic-science) and have the students try to answer questions, while going through the files. *Maybe give them a list of questions and have them try to answer, then discuss to start?- C.M.*

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

**Guide to the files** - This is in the [README.md](./files/01-forensic-science/README.md) file currently in the [01-forensic-science](./files/01-forensic-science) directory. This maybe should be removed before it is given to students. ;)

### Lecture 01 - 30 minutes

[Link to presentation]() 

## 02 Programmatic Modification

### Activity 02 - Checking and Cleaning Data - 30 min

This section considers a single data file with information on two countries, Australia and New Zealand. The purpose is to get students thinking about how to enter their data or two structure existing data for ease of use when working in R. They are given a file "oceania_broken.xlsx" and asked for figure out what is wrong with it. It is most effective if the instructor put this up on the screen and talks through the errors as the students recognize them. It also introduces the idea of additional files for storing metadata and tasks related to the data, both of which should be plain text, which follows along from the themes discussed in the first activity. **BEFORE** students start modifying the file, however, it is important to discuss the idea of raw data and never changing your only copy of something. So, first duplicate the file so that you can always refer back to the original if needed.

**The things that need to be fixed (and possible solutions) are as follows:**

1. Delete the first row (row 1), move it to a oceania_metadata.txt file
    * *Point to make: First row should be column headers, but we don't want to get rid of important metadata in this file, so instead move it to a text file called "metadata_oceania.txt". That way the file will sort with the data file alphabetically and other people will know they are associated since they share a name.*
    
2. Change "continent" row header back to "country" in column A
    * *Point to make: R requires that all column names are distinct from one another. Here the change is not an obvious fix, since Australia is both a country and a continent. We could guess based on the presence of "New Zealand" or else would have to know more about the data set to fix this.*
    
3. Change column E from "5lifeExp" to "lifeExp"
    * *Point to make: R column headers cannot start with numbers, although they can include numbers (just not at the beginning).*
    
4. Fix cell A11 from misspelled "Australa" to "Australia"
    * *Point to make: Introduce the concept of categorical variables, and that spelling has to be exactly identical for R to parse them correctly. There is no country or continent named "Australa", so this is an easy fix.*
    
5. Change all blank cells, "missing" cells, or N/A values to NA (cells F20, F24, D19)
    * *Point to make: NA is a special value in R, other options (N/A, missing, -9999, etc) will not be treated as missing data and can interfere with parsing the data.*
    
6. Change cell C15 from a capital "O" to a zero in the value
    * *Point to make: Spelling matters.*
    
7. Remove comments on bottom of sheet (cells B28, G33), add to a oceania_tasks.txt file
    * *Point to make: Since for data frames in R, each column must be of a single type (numeric, character, etc), any notes at the bottom of the data can screw up reading in the data and performing operations on it. However, we don't want to lose that information, so put it into a txt file called oceania_tasks.txt*
    
8. Delete column G (empty space)
    * *Point to make: There is no reason to have empty columns in the data.*
    
9. Add column header for notes column (this is now column G)
    * *Point to make: All columns should have headers. It's fine to have a column for text notes associated with rows, but make this explicit by adding a column header.*
    
10. Change cell D10 from "0ceania" (with a zero) back to "Oceania" (with an o)
    * *Point to make: Spelling matters*
    
11. Change cell B19 from 1972 to 1977 (duplicated entry), look back to original 
    * *Point to make: This one might be hard to catch initially, but will show up and cause erroneous values when plotting or calculating statistics. If you didn't know what this value should be (even if you notice that it is wrong), then you could either go back to the original lab or field notebook to check the value, or flag it as a potential error (potentially in the notes column).*

After these have been fixed and the points have been discussed, compare the list students have made documenting the steps they took to fix the file. Discuss how this is similar to a script file that did the same things, but the script file could actually be run to make the changes in addition to documenting what was done. Also make the point that manually fixing files like we just did by hand is feasible for small data sets, but practically impossible for data sets of even moderate size. This is another reason why scripting these cleaning steps is useful. 

Then, demonstrate exporting the xlsx file to csv. Describe why csv or other plain text data should always be used if possible for the reasons mentioned in Lesson 1.

