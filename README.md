# Module 7 Challenge: Pewlett-Hackard-Analysis

## Overview:
Pewlett-Hackard has its company data in multiple csv files. its preferred to create a database that any information can be accessed easier. 
### purpose:
Goal of this analysis is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. 

## Results:
In part 1 of the analysis, a table created that hat holds all the titles of employees who were born between January 1, 1952 and December 31, 1955.  
* Many employee names are repeated in multiple rows since they had different titles over time.

![Retirement Titles](Data\Retirement_titles.png)
**Fig1. Retirement Titles**


In the 2nd part of the analysis, a 2nd table was created that holds the **last** title of the employees who were born between January 1, 1952 and December 31, 1955.  
* Using *'Distinct'* command, only one line per employee number is chosen. (the most current title since it was sorted based on Date)  

![Unique Titles](Data\Unique_Titles.png)

**Fig2. Unique Titles**

In the last part of the part 1 analysis, the count for each title is stored in a new table.
* A large number of Senior Engineers and Senior Staff is about to retire. Company should think about how to transfer the knowledge from older to new hires.
* Interestingly only 2 managers are on the list. It looks like managers don't last long in their position.

![Retiring Tables](\Data\Retiring_Tables.png)

**Fig3. Retiring Tables**

In part 2 of the analysis, we are trying to find  the *current* employess whose birth dates are between January 1, 1965 and December 31, 1965. These employess are eligible to participate in a mentorship program.
* There are 1549 employees that are eligible to participate in the mentorship program

![Mentorship_eligibility](\Data\Mentorship_eligibility.png)

**Fig4. Mentorship_eligibility**

## Summary:
In summary, 25916 Senior Engineers, 24926 Senior Staffs, 9285 Engineers, 7636 Staffs, 3603 Technique Leaders, 1090 Assistant Engineers and 2 Managers are about to retire.
**1549** employees are identified to be eligible to participate in the mentorship program. To get the count, following query was used to find the number of employees eligible for mentorship Program.

<span style="color:red"> SELECT COUNT</span> (me.emp_no)<span style="color:red"></span>
<span style="color:red">FROM </span> mentorship_eligibilty <span style="color:red"> AS </span>me;


The following query was used to see the employee titles that are eligible to participate in the mentorship program.

![Mentorship_eligibility_count_query](\Data\Mentorship_eligibility_count_query.png)


The result is shown below: there are no managers eligible to mentor.

![Mentorship_eligibility_count](\Data\Mentorship_eligibility_count.png)

**Fig5. Mentorship_eligibility**
