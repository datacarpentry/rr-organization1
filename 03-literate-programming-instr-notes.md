## 03 Literate Programming

To start this activity, give a brief introduction to what literate programming is. 

###Activity

Have them open up [countryPick4](https://github.com/Reproducible-Science-Curriculum/rr-organization1/blob/master/files/03-literate-programming-activity/countryPick4.rmd). This is where they can start alone exploring the script.  Running the code. Give them a around 10 minutes to just run the code and make graphs. 

Guide them to line where they can change the countries: 

    countryName1 <- "India"
    countryName2 <- "United States"
    countryName3 <- "Nigeria"
    countryName4 <- "Germany"

Show them how to look at the data to choose the countries

    levels(gapMinder$country)

After they are familar with the code have them knit a report.  Show them the different options.  

**Exploring input and output files**