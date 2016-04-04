# Poverty Data

The goal of this project is to gain more practice with dictionaries and creating functions.

### Background

In this project you will read in poverty data collected by the 2014 U.S. census for each county in Washington, as well as another state of your choosing. We will analyze some statistics using this data.

The data comes from the U.S. census of 2014. It is located at [http://www.census.gov//did/www/saipe/data/statecounty/data/2014.html](http://www.census.gov//did/www/saipe/data/statecounty/data/2014.html) and is available in a number of formats.

We will work with the txt version. The web site describes the format of this text file, indicating the columns the data occurs in. For the most part, we can ignore the column numbers and just work with the file as **space-separated** data.   Note, the county name may have spaces in it.

Some things to note about the data:  
•	The first line has data for the entire state.  We are only interested in county data—the rest of the lines in the file.  
•	The data most relevant to this exercise for each county is:  
 - count of people age 0-17 (i.e., children) in poverty (index 8)  
 - percentage of people age 0-17 (i.e., children) in poverty (index 11)  
 - median household income (index 20)  
 - county name (columns 193-238)  


#### Using this data, output the following:
1.	For each state you chose, find the county in that state with the highest percentage of children in poverty and print the county name, percentage, count of children in poverty and the median household income.
2.	For each state you chose, find the county in that state with the lowest percentage of children in poverty and print the county name, percentage, count of children in poverty and the median household income.

#### Allow the user to interact with the program:
- A user can enter a county name which will:
  - Print the county name, percentage, count of children in poverty and the median household income.  
  - The entered value should not be case sensitive and only the county name is used, i.e. entering “clinton” or “Clinton” gets the data for Clinton County (that is, you don’t search using “Clinton County”).  
  - Re-prompt if county is not found. Type ‘q’ or ‘quit’ in any case to quit the loop.

