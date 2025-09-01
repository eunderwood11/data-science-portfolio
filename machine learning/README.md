In this machine learning project, a partner and I selected a public dataset on student loan data and built different models in Python.

First, we had to choose which data to use from the topic, so we downloaded 7 Excel sheets that were potential candidates for the project. I had to restructure the data in Excel first, since it was not a csv file nor in tabular format. I converted the data into a 2D table before loading it into Python using Pandas. Then, I dropped the empty columns, renamed the ones where there were formatting errors, and checked the distribution of the data. There was a dollar sign in the column of dollars outstanding which had to be removed using regular expressions substitution. Then, I displayed the distribution of the data using describe().

Some questions we wanted to answer: what is the trend in the amount of dollars loaned and the number of recipients over time? Can we see a correlation between the number of receipients or amount of dollars loaned and the type of the deferment? Is there a correlation between loan amount and quarter?

Exploratory data analysis told us that there was a net increase in the amount owed from 2015 to 2024. The in-school deferment type average recipients was much higher than the other loan types and the average number of recipients had a net decrease by year.

The models we explored did not end up suiting the data well, as although the linear regression model performs well, most of the predictive power comes from the In-School Deferment variable, which is the most common in the dataset, so it does not seem like it would be that useful or have much generalizibility. The decision tree model would benefit from using a scaler so that feature importance is balanced, since the number of recipients are in millions, and having the year as part of the data barely captures any pattern. In-School Deferment is the majority of the data, so it makes sense that it would capture the most variability of dollars owed.


