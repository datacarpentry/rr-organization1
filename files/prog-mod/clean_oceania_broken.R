# Script to clean oceania_broken.csv file

# Read in top comment row and write out to a metadata file
file.header <- scan("oceania_broken.csv", 
                    what = "character", 
                    sep = ",", 
                    nlines = 1)
writeLines(file.header[1], "oceania_metadata.txt") # We only want what is in the first cell

# Read in task notes at the end of the file and store to a tasks text file (starting at line 26)
todo.notes <- scan("oceania_broken.csv", 
                   what = "character", 
                   sep = ",", 
                   skip = 26, 
                   blank.lines.skip = TRUE)
todo.notes <- todo.notes[todo.notes != ""] # remove empty cells 
writeLines(todo.notes, "oceania_tasks.txt")

# Read in data, standardizing NA values, skipping blank lines, properly setting column header names
data.in <- read.table("oceania_broken.csv", 
                      sep = ",", 
                      skip = 2, 
                      col.names = c("country", 
                                    "year", 
                                    "pop", 
                                    "continent", 
                                    "lifeExp", 
                                    "gdpPercap", 
                                    "blank", 
                                    "Notes"), 
                      blank.lines.skip=TRUE, 
                      nrow = 24, 
                      na.strings = c("N/A", "NA", "missing"))

# Remove the empty column
data.in <- subset(data.in, select = -c(blank))

# Fix the correct spelling of Oceania and remove the unnecessary factor levels
data.in$continent[9] <- "Oceania"
data.in$continent <- factor(data.in$continent)

# Fix the typo in the population column
data.in$pop <- as.numeric(as.character(data.in$pop))
data.in$pop[14] <- 2229407

# Fix the mistake (repeated value) in the year column -- after referring back to the original dataset
data.in$year[18] <- 1977

# Fix the typo in the country column and remove excess factor levels
data.in$country[10] <- "Australia"
data.in$country <- factor(data.in$country)
