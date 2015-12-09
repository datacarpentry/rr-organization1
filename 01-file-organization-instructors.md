---
title: "File Organization<br>Instructor notes"
author: "Reproducible Science Workshop"
output: 
    html_document:
        css: styling.css

---

## Notes to use with the File Organization Slides ...

<!-- Overview / Goals / Objectives of File Organization Slides (or lesson)
<br>Notes for each slide
<br>Include ways to elicit conversation / input -->

## Overview / Goals / Objectives
- Highlight common information management snafus
- Show personal information management strategies that are fine for an individual, but make file sharing, 
  automated processing very difficult or impossible.
- Encourage group cohesion. We've either all done these things, or inherit these issues. So what's a person / lab to do?
- Remind them the mission statement and the tagline:
    - Mission statement: To Train researchers in the best practices and approaches of reproducible research and accelerate scientific progress
    - Tagline: Accelerating scientific progress through reproducible science.
- Show best practices or ''better practices''
- Invite participants to share file organization (nightmares) challenges they have faced (or are dealing with)
    - Ask them (make a list, potentially) for how they solved these, or are planning to solve.
    
## Exercise: Share your file organization nightmares (5 - 10 mins max)
#### If time: Ask them to share how they solved or are planning to solve (what methods, what software)?

## From the slides:
### Key Points

#### Slide 2
1. Data, we are inundated, and there's more every day.
2. We may be experiencing more data than we know how to work with effectively, reproducibly.
* Opportunity to bring in any current topic or relevant news items.

#### Slide 3
1. With the advent of personal computing, old limits for how to name and organize directories are gone.
* No more 8.3 file-naming, for example.
2. This makes it easier in some ways. We can name and organize directories and files anyway that we want to.
3. But, for sharing data, and writing scripts that evaluate (or analyze) data in files automatically, files need to be
    structured, organized, and methodically named.
4. They also need to be organized and structured -- for one's mental sanity, and of course -- reproducibility!
5. This can take some forethought
* either because you are lucky enough to be starting from scratch OR
* because you are trying to standardize an existing set of data files.

#### Slide 4
1. Consider the data-life-cycle. To conceptualize this, think of inputs (your raw data), and outputs.
2. Your data life cycle can help you figure out how to store your raw data, your iterative analyses, and output like posters, manuscripts, and reports in a way that helps you keep track, now-and-in-the-future.

#### Slide 5
1. The Reality - Over the course of a project or collaboration, over the course of a career, it's going to get
  complicated! So, what to do?

#### Slide 6
1. Note what makes a file name useful and how the data-life-cycle helps you figure out a good file organization structure.
2. Yes! do create README files, but do make the file and directory names helpful and informative.
3. More hints are on-the-way for specific file-naming do's and don'ts.

#### Slide 7
1. If you're getting ready to start a project, or have inherited someone else's data and file structure, there are guides
  to helping you organize them.
2. Note here how the directory structure mimics the data-life-cycle. 

#### Slide 8-9-10
1. No matter what you do, decide what to do and stick-to-it. Be consistent.
* Optional - may be a good place in-the-future, to modify the slide to contain something like
** data-raw
** data-clean
** data-clean-notes
<br>
or data-clean/data-clean-notes<br>
to show where you would keep a file that lists what you've done, what steps you've taken, to clean your data.

#### Slide 11
1. Example directory structure.

#### Slide 12
1. Example directory structure.

#### Slide 13
1. Example directory structure.

#### Slide 14
1. Example directory structure.

<div class="boxed">
#### Slide 15
1. Example directory structure.

#### Slide 16
1. Challenges you will face - known issues to be aware of when organizing data and downstream derived files.

#### Slide 17
1. Why should you bother standardizing your research workflow? What will you get for your organizational efforts?
2. It's time well-spent, but there is a point of "good enough."

#### Slide 18
1. Another hint: '''quarantine the crazy'''. What?
2. Create a space to put files and data with known issues.
3. Create a README file or some other notes or code comments that track your changes to this messy data.

#### Slide 19
1. Learn how to revoke your write permissions to the '''raw''' data files.
  - this prevents the creation of very sad data stories.
  - remember there often is no "un-delete" so put measures into place to keep the nightmares away.
  
#### Slide 20-21-22
1. Review of the Data Analyses Life Cycle.

#### Tips for instructors:

- Remind them that they need to document -- in past workshops most people got hung
up on doing, then documenting, and then the second part of the exercises didn't
have as much of a punch. More important that they document what they do (even if
not all tasks) than that they finish.

### Part 1: Swap + discuss (15 minutes)

#### From the slides:

<div class="boxed">
Introduce yourself to your collaborator and tell them why you're here.

1. Swap instructions / documentation with your collaborator, and try to reproduce 
their work, first **without talking to each oher**. 
If your collaborator does not have the software they need to reproduce your work, we 
encourage you to either help them install it or walk them through it on your computer 
in a way that would emulate the experience. (Remember, this could be part of the 
irreproducibility problem!)
2. Then, talk to each other about challenges you faced (or didn't face) or why 
you were or weren't able to reproduce their work.
</div>

#### Tips for instructors:

- Collect data from the students on their file management choices, successes and failures. Tallying these
on the board creates a nice visual.
    - If you know that the session will have a large number of participants preparing a
    Google Form might be useful.
- Adjust discussion time on slides if issues are well-covered in opening discussions. Feel free to keep it short at end
if exercise took longer than intended.
