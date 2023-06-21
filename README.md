### Workplaces

## Summary

The goal of this analysis was to see whether the number of employees in a company effected how much employees liked working there. I used two data sets in this analysis; one containing general company information including number of employees, and one from Glassdoor.com that included the company's rating given by employees. 

## Process

To accomplish my goal, I first used VBA in Microsoft Excel to clean up the data. I took out extra characters and replaced special characters (like accents) with characters accepted by SQL. 

I then used SQL to create the data set that I needed. After importing the two data sets I performed a left join on the company name column to add all glassdoor ratings into the larger data set. I then changed the employee column to the integer data type after removing all of the commas and created bins for the number of employees for each company. 

Lastly, I used Tableau to visualize my findings. In my analysis, I found that the number of employees did not affect the average rating of the company. All employee ranges had around the same average company rating. ![screenshot](https://i.imgur.com/sYRmvmQ.png) 
