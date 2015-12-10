---
title: "File Naming<br>Instructor notes"
author: "Reproducible Science Workshop"
output: 
    html_document:
        css: styling.css

---

## Notes to use with the **Names Matter** (file-naming) slides ...

<!-- Overview / Goals / Objectives of File Naming Slides (or lesson)
<br>Notes for each slide
<br>Include ways to elicit conversation / input -->

## Overview / Goals / Objectives
- Highlight common naming issues that add to information management snafus 
- Show personal information management strategies that are fine for an individual, but make file sharing, 
  automated processing very difficult or impossible.
- Encourage group cohesion. We've either all done these things, or inherit these issues. So what's a person / lab to do?
- Remind them of the mission statement and the tagline:
  - Mission statement: To Train researchers in the best practices and approaches of reproducible research and accelerate scientific progress
  - Tagline: Accelerating scientific progress through reproducible science.
- Show best practices or *better practices* for naming files and directories
- These slide notes are meant to help the instructor by highlighting important points to cover for each slide. They are not meant to limit to *only these points* and it is certainly not meant for an instructor to read *verbatim* the text provided.

## Possible Activities
1. Ask students to share examples of file names that have caused them or are causing them headaches.
  * How do they currently solve these? (what methods, what software)?
  * You may need to share an experience of your own if they are reluctant, to get started.
  2. Consider the time needed for this presentation. If you do activity, do consider what slides you can skip as you go through this presentation.

## From the slides:
### Key Points

#### Slide 2
1. Our current software operating systems allow us to name files any way we want to. 
While this is fine for personal use (is it?), it does not support reproducibility (it causes lots of headaches).
  - In the past, all file names were required to be 8.3 format.
2. What do the good file names have in common? What do they facilitate?
2. (Note that you can go past this slide very quickly if you did Activity 1 above).
* Opportunity to bring in any current topic or relevant news items.

#### Slide 3
1. What to remember when deciding how to name files.
  - well-structured filenames create contents that sort and
  - patterns that facilitate finding your materials and
  - make it easy to write scripts that automate data analysis and data transformations.
2. Avoiding special characters and spaces in your file names means a machine can read and find the file.
3. For sharing data, and writing scripts that evaluate (or analyze) data in files automatically, files need to be
    structured, organized, and methodically named.
4. File naming or renaming can take some forethought
    * either because you are lucky enough to be starting from scratch OR
    * because you are trying to standardize an existing set of data files.

#### Slide 4 (awesome file names)
1. Note the file-naming pattern that means the files sort, and the information contained in the name. 

#### Slide 5
1. What exactly does it mean to make a file name **machine readable**?
2. Avoiding spaces, punctuation marks, accented characters, and case sensitivity means you'll be able to use
**regular expresssions** and scripts to edit your files and data in your files.
3. Using **delimiters** like underscores and hyphens makes it easier to automate changes to your files.

#### Slide 6
1. At the command line: you can also use these well-structured file names for **finding** or 
grouping (globbing) a particular set of files in a directory.

#### Slide 7
1. What if you aren't working at the command line? Note that in R too, you can use this type of information to group your files with regex (aka a regular expresssion).

#### Slide 8
1. In this slide, you can see the power of the **delimiter** to find files. There's **metadata** in the file names
and the **metadata chunks** are separated by **underscores** or **hyphens**.
2. This type of strategy works in R, Python, the shell, ...
3. (Note repetition here -- from reference in Slide 5).

#### Slide 9
1. IF you make your files **machine readable** what are the benefits?
  - searching for files, 
  - extracting information from file names
2. To make machine readable files, what ought to be avoided?
  - punctuation
  - case issues, avoid naming files using CASE as the only difference (foo and Foo -- Not Good!)
  - accented (special) characters like umlauted letters, or letters with tilda, for example.
  - no spaces in file names
3. (Note some repetition here to Slide 5)
4. (Might be good place to mention there are automated ways to fix all of these issues, if you are cleaning up old data and not starting from scratch with best practices).

#### Slide 10
1. What about the **human readable** aspect?
  - the file or directory name contains information on *content* in file or directory

#### Slide 11
1. There are aspects to making file and directory names more or less *Human readable*.
2. In this slide you can easily see how the file and directory names on the left are more
useful than the ones on the right.

#### Slide 12
1. Human readable **slugs**. 
2. Notice the patterns of pre-fixes, and uses of delimiters.

#### Slide 13
1. What exactly is **human readable**?
2. (This slide might need to be moved up in the order).

#### Slide 14
1. A well-structured **human readable** file or directory name is designed to result 
in default ordering.
2. Using ISO 8601 standards for dates is one way to create files that order by default
  - what's ISO 8601? (see Slide 16)
3. Padding (left-padding in this case) numbers with zeroes to also helps create files
that order by default.

#### Slide 15
1. Sample *human readable* files with names that sort in 
  - chronological order
  - logical order
2. What makes sense for your data? Why might you choose one over the other?

#### Slide 16
1. Using ISO 8601 standard for dates, that's YYYY-MM-DD.
2. This is not just a good idea for sorting, but for reproducible science when publishing your data.
  - Can help prevent confusion and ambiguity in dates that can result when collaborating across the planet.

#### Slide 17
1. Left-padding of file names to create directory content lists that make sense.
2. If you don't do this, you're making it harder for humans, and machines, to find stuff.

#### Slide 18 (review of slide 14)
1. Review of what **plays well with default ordering**  means.
  - A well-structured **human readable** file or directory name is designed to result in default ordering.
Using ISO 8601 standards for dates is one way to create files that order by default.
What's ISO 8601? (see Slide 16). Padding (left-padding in this case) numbers with zeroes to also helps create files
that order by default.

#### Slide 19
1. Review of the 3 Principals for (file) names.
  - machine readable
  - human readable
  - sorts by default (left pad with zeroes, for example)
2. Why bother?
  - supports reproducibility
  - much easier to set up at the beginning
  - saves many headaches when publishing, facilitates faster publishing
  - there are automated ways to clean up data that is not well-named
  - supports fruitful collaborations

#### Tips for instructors:


<!-- #### Tips for instructors:
- Adjust discussion time on slides if issues are well-covered in opening discussions. Feel free to keep it short at end
if exercise took longer than intended. -->
