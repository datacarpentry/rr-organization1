# Documenting data modifications

## Learning Objectives

* Distinguish between a spreadsheet formatted properly for later
  analysis in R and one formatted improperly.
* Be able to recognize common data entry errors and how to handle
  them.
* Be able to describe the concept of 'raw data' and why it is
  important.
* Differentiate between manual and programmatic file manipulation and
  know the pros and cons of each.

## Activity 02 - Checking and Cleaning Data

Please download the Excel file called `oceania_uk.xlsx` and open it.

Depending on what type of science you do, data may come from
instruments, online databases, or transcribed from field or lab
notebooks into spreadsheets. Thinking about how to format your data in
those spreadsheets to ensure that it is *machine readable* (that is,
easily parseable by an algorithm or script) and *well documented for
humans* is important.

In R, the primary data type used most often is called a `data
frame`. Although there are many similarities to the ways datasets are
represented in spreadsheet programs, there are a few key differences
and formatting concerns. This exercise works through "fixing" a
poorly-formatted spreadsheet in Excel and preparing it for use in
R. Along the way, we will also work to create supplementary
documentation and move everything to plain text formats.

### Instructions

Assume for the moment that this is your only copy of the data. it's
important _NEVER_ to modify by hand or by script your only copy of a
dataset, since you may need to start over at some point in the future.
Therefore, before making any corrections to the dataset, remember to
create a copy of the file.

Next, once you've duplicated that file, open the copy and start going
though the spreadsheet and correct any errors you observe. Every time
you find an error and correct it, document *exactly* what you did,
step by step, in a text file. Imagine that you are writing these
instructions to yourself or to a colleague to document exactly what
you did to this file, so that you could read the file and easily
repeat the changes on the original copy if you needed to.

## Textual documentation to executable documentation

Eventually, all modifications to data files would be done
programmatically -- that is, completely through a scripted approach
instead of by hand in a graphical user interface (GUI) such as Excel.
This skill takes time to learn and to get efficient with.  Initially,
it may take much longer than doing it by hand, but if the
modifications need to be not only recounted later but re-executed, the
scripted approach will start to pay off. Importantly, it is natural to
extend the script approach to include automatic tests to verify that
the dataset (which may changed since last time you inspected it) meets
the basic integrity constraints that are assumed. _AND_ you now have a
fully documented and reproducible set of instructions for cleaning
your data.
