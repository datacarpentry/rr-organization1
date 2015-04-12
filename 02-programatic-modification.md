## 02-programatic-modification.md

### Learning Objectives

* Distinguish between a spreadsheet formatted properly for later analysis in R and one formatted improperly
* Be able to recognize common data entry errors and how to handle them
* Be able to describe the concept of 'raw data' and why it is important
* Differentiate between manual and programmatic file manipulation and know the pros and cons of each

## Activity 02 - Checking and Cleaning Data

Please download the Excel file called `oceania_broken.xlsx` and open it.

Depending on what type of science you do, data may come from instruments, online databases, or transcribed from field or lab notebooks into spreadsheets. Thinking about how to format you data in those spreadsheets to ensure that it is *machine readable* (that is, easily parseable by an algorithm or script) and *well documented for humans* is important.

In R, the primary data type used most often is called a `data frame`. This is similar in many ways to the typically formatting used by many people in spreadsheet programs, but there are a few key differences and formatting concerns that are important to pay attention to. This exercise works through "fixing" a poorly-formatted spreadsheet in Excel and preparing it for use in R. Along the way, we will also work to create supplementary documentation and move everything to plain text formats.

### Instructions

Before you start modifying anything, make a copy of the `xlsx` file. Remember, this is our only copy at the moment, and it's important NEVER to modify by hand or by script your only copy of a file, since you may need to start over at some point in the future.

Next, once you've duplicated that file, open the copy and start going though the spreadsheet and correct any errors you observe. Every time you find and error and correct it, document *exactly* what you did, step by step, in a text file. Imagine that you are writing these instructions to yourself or to a colleague to document exactly what you did to this file, so that you could read the file and easily repeat the changes on the original copy if you needed to.

We will be using this dataset in subsequent exercises, so it's important that you find and fix all of the problems with it now.
