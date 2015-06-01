
## Loading libraries and other setup

library(testthat)

## Reading in the data

# the name of the file containing the dataset:
datafile <- "oceania-uk-data.csv"

# the name of the metadata file:
metafile <- paste(paste(strsplit(datafile, split = "-")[[1]][c(1,2)],
                        collapse="-"),
                  "metadata.txt",
                  sep = "-")

# the name of the metadata file:
outfile <- paste(paste(strsplit(datafile, split = "-")[[1]][c(1,2)],
                       collapse="-"),
                 "sanitized.csv",
                 sep = "-")

## Moving metadata out into a separate file

file.header <- scan(datafile, 
                    what = "character", 
                    sep = ",", 
                    nlines = 2)

# not sure whether this is capturing all?
writeLines(file.header[1], metafile) # We only want what is in the first cell

## Sanitizing the data

# Read in data, standardizing NA values, skipping blank lines,
# properly setting column header names:

data.in <- read.table(datafile, 
                      sep = ",", 
                      skip = 4, 
                      col.names = c("country", 
                                    "year", 
                                    "pop", 
                                    "continent", 
                                    "lifeExp", 
                                    "gdpPercap", 
                                    "blank", 
                                    "Notes"), 
                      blank.lines.skip=TRUE, 
                      na.strings = c("N/A", "NA", ""))

# Remove the empty column:
data.in <- subset(data.in, select = -c(blank))

# Fix the typo in the country column and remove excess factor levels:
data.in$country[data.in$country == "Australa"] <- "Australia"
data.in$country <- factor(data.in$country)

# Fix the typo in the population column:
pop.is.typo <- is.na(as.numeric(as.character(data.in$pop)))
pop.typo <- strsplit(as.character(data.in$pop[pop.is.typo]),"")[[1]]
pop.typo[pop.typo == "O"] <- "0"
data.in$pop <- as.numeric(as.character(data.in$pop))
data.in$pop[pop.is.typo] <- as.numeric(paste(pop.typo,collapse=""))

## Data integrity tests

# We should have 6 columns with specific names.
expect_that(data.in,
            has_names(c("country", "year", "pop", "continent",
                        "lifeExp", "gdpPercap", "Notes")))

# We should be left with 2 factors in country.
expect_that(nlevels(data.in$country), equals(2))

# _Continent_ shouldn't have any missing values.
expect_that(any(is.na(data.in$continent)), is_false(),
            info="column continent has missing data")

# _Populuation_ needs to be numeric.
expect_that(is.numeric(data.in$pop), is_true(),
            info="population size isn't numeric")

## Write sanitized data to csv

write.csv(data.in, file = outfile)
