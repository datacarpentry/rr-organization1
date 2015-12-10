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
1. What exactly does it mean to make a file name **machine readable?**
2. Avoiding spaces, punctuation marks, accented characters, and case sensitivity means you'll be able to use
**regular expresssions** and scripts to operate on your files and on data in your files.

#### Slide 6
1. At the command line: you can also use these well-structured file names for **finding** or 
grouping (globbing) a particular set of files in a directory.

#### Slide 7
1. In R too, you can use this type of information to group your files with regex (aka a regular expresssion).

#### Slide 8-9-10
1. No matter what you do, decide what to do and stick-to-it. Be consistent.
  * Optional - may be a good place in-the-future, to modify the slide to contain something to show where you would keep a file that lists what you've done, what steps you've taken, to clean your data.

#### Slide 11-12-13-14-15
1. Example directory structure.

#### Slide 16
1. Challenges you will face - known issues to be aware of when organizing data and downstream derived files.

#### Slide 17
1. Why should you bother standardizing your research workflow? What will you get for your organizational efforts?
2. It's time well-spent, but there is a point of *good enough.*

#### Slide 18
1. Another hint: **quarantine the crazy**. What?
2. Create a space to put files and data with known issues.
3. Create a README file or some other notes or code comments that track your changes to this messy data.

#### Slide 19
1. Learn how to revoke your write permissions to the '''raw''' data files.
  - this prevents the creation of very sad data stories.
  - remember there often is no "un-delete" so put measures into place to keep the nightmares away.
  - (we are assuming here, that everyone knows how to do this, and understands *write permissions*).
  
#### Slide 20-21-22
1. Review of the Data Analyses Life Cycle.

#### Tips for instructors:

- Remind them that they need to document as they go -- in past workshops most people got hung up on doing, then documenting, and then the second part of the exercises didn't have as much of a punch. More important that they document what they do (even if not all tasks) than that they finish.

<!-- #### Tips for instructors:

- Collect data from the students on their file management choices, successes and failures. Tallying these
on the board creates a nice visual.
    - If you know that the session will have a large number of participants preparing a
    Google Form might be useful.
- Adjust discussion time on slides if issues are well-covered in opening discussions. Feel free to keep it short at end
if exercise took longer than intended. -->
