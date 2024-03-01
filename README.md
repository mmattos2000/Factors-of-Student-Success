# Factors of Student Success Research Project

## Abstract
Navigating the academic journey as a student presents various challenges, and understanding the factors influencing academic success is crucial. This project aims to investigate the impact of certain variables on students' grades and assess the probability of these factors determining academic success.

## Analysis
We will employ multiple logistic regression tests to explore the correlation between grades and the selected factors, shedding light on their significance in predicting student success.

## Dataset
**Student Performance Data Set - UCI Machine Learning Repository**

In this analysis, we focus specifically on the mathematics course, narrowing our scope to delve deeper into the factors affecting student performance.

### Technique to Obtain Data
The dataset comprises responses from 395 students at a Portuguese school, offering insights into potential contributors to academic performance in mathematics. The following variables were collected:

- **Age**: Student's age (numeric: from 15 to 22)
- **Activities**: Participation in extracurricular activities (binary: yes or no)
- **Internet**: Internet access at home (binary: yes or no)
- **Health**: Current health status (numeric: from 1 - very bad to 5 - very good)
- **Absences**: Number of school absences (numeric: from 0 to 93)

*Note: Data on students' grades were provided for three terms, from which we computed the average grade.*

### Selected Variables for Analysis
To assess their influence on student success, we have chosen the following variables for analysis:

#### Selected Continuous Variables:
- **Age**
- **Health**
- **Absences**
- **FinalGrade** (numerical)

#### Selected Categorical Variables:
- **Internet**
- **Activities**
- **Grade** (Fail/Pass)

## Conclusion
By examining these selected factors, we aim to uncover insights into the dynamics of student success in the context of the mathematics course. Through rigorous analysis and interpretation of the results, we endeavor to contribute valuable knowledge to the discourse surrounding educational outcomes and strategies for fostering student achievement.
