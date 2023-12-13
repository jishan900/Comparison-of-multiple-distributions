# Comparison-of-multiple-distributions
Inside Airbnb is an internet platform that offers information and support regarding Airbnb’s influence on residential communities. Their goal is to empower communities with data and knowledge, enabling them to comprehend, make decisions and have control over the rental of residential houses to tourists.

# Project Objective
The primary goal of this project is to determine the relationship and pairwise differences between log price and the host response time with a focus on three different categories. At first, the measure of central tendency is utilized in descriptive statistics to describe the distribution of these two variables. Secondly, assumptions of the ANOVA test are checked including the independence, normality, and homogeneity of variance. Graphical technique such as Q-Q plot are used to examine the normality assumption, where Levene’s test determines the homogeneity of variance. Subsequently, Two-Sample $t$-tests are employed to determine the pairwise differences between the groups. Furthermore, techniques for adjustment, such as the Bonferroni correction and Tukey's Honest Significant Difference are employed to reduce the problem of doing repeated tests. Ultimately, the results are contrasted with the results obtained using the non-adjustment approach.

# Dataset and Data Quality
The dataset used in this study is contributed by the acclaimed instructors of the ‘Introductory Case Studies’ course at TU Dortmund during the Winter 2023/2024 semester. Notably, the dataset has been taken from the Inside Airbnb website for the Seattle, Washington, United States region. The sample size of the dataset is 232 observations along with 2 variables. The variables of the dataset are ‘log price’ and ‘host response time’. The variables log_price and host_response_time are renamed and used in the analysis as ‘log price’ and ‘host response time’. In addition, the ‘host response time’ variable is categorized into three levels: ‘within a few hours’, ‘within a day’ and ‘within an hour’. 

From the variables, the ‘log price’ variable is numerical (continuous) and the ‘host response time’ variable is categorical (ordinal). After executing the R program, it is discovered that the dataset is well organized and there are no missing values in the entire dataset. Overall, the data quality is considered to be good.

# Statistical Methods
In this section, several statistical methodologies are presented. The entire dataset was analyzed with R programming language, version 4.1.1, which was developed by the R Development Core Team. Moreover, a few R packages, including ggplot2, gridExtra, tidyverse, skimr, rstatix, car and ggpubr are used for the statistical data analysis, calculations and visualizations.
1.  Statistical Hypothesis Testing, 2. Confidence Interval, 3. One-way ANOVA, 4. Q-Q Plot, 5. Levene’s Test, 6. Two-Sample t-Tests, 7. Bonferroni Method, 8. Tukey’s Honest Significant Difference (HSD)

# Statistical Analysis
In this section, all dataset variables, such as ‘log price’ and ‘host response time’ are utilized. Moreover, the ‘host response time’ variable was categorized into three portions and used in the analysis. The main goal of this study is to establish the correlation and individual distinctions between log price and the host response time, with a specific emphasis on three different categories. Finally, the last subsection shows a brief comparison between the non-adjusted and the adjusted method.

![image](https://github.com/jishan900/Comparison-of-multiple-distributions/assets/32738421/08bbd2ad-3087-46a5-8ce2-d499fe2f8cfa)

![image](https://github.com/jishan900/Comparison-of-multiple-distributions/assets/32738421/f8ae1818-6274-481b-bc70-aa75eb4e72f1)

![image](https://github.com/jishan900/Comparison-of-multiple-distributions/assets/32738421/7dd953bf-4906-4f14-8a08-22cfe61d26f0)

![image](https://github.com/jishan900/Comparison-of-multiple-distributions/assets/32738421/122d6975-e403-44be-9c5f-9aaa9927bfd4)

![image](https://github.com/jishan900/Comparison-of-multiple-distributions/assets/32738421/b35be9e4-d288-4c89-b998-72163c4194f2)

![image](https://github.com/jishan900/Comparison-of-multiple-distributions/assets/32738421/d21b8cee-9e75-4a94-89e0-7022d845c057)
![image](https://github.com/jishan900/Comparison-of-multiple-distributions/assets/32738421/d428f822-4e69-472d-a1b6-e35ac8f31f2f)
![image](https://github.com/jishan900/Comparison-of-multiple-distributions/assets/32738421/c6273104-f475-4af1-996d-c8ec55488ee9)


# Summary 
In conclusion, the main objective of this paper was to analyze data on median age and mortality rate from the given dataset. This dataset contained 227 countries, which were separated into five regions and 21 subregions between 2003 and 2023. This dataset had a total of 453 observations along with 11 variables. The data utilized in this study was obtained from the International Data Base (IDB) of the United States Census Bureau. The frequency distributions of the variables and the difference between the sexes and regions, the detailed difference between the regions Europe and Africa along with the dependency and variability between the variables for both regions, the relationship between the variables of median age and infant mortality rate, and how the values of the variables changed over the last 20 years (2003 and 2023) were analyzed with the help of the statistical methods and followed by their measurements along with graphical representations. We implemented the data of the 2023 years for the first three tasks, and for the last task, we used the data of 2003 and 2023. By histogram, we saw that the median age for female rate was high, whereas the infant mortality portion females rate were less than male. Moreover, from the boxplot our findings were that the European region had the highest value for the median age whereas the African region had the lowest value. Moreover, the Africa region had the highest mortality rate, and the Europe region had the lowest rate. In the part of data variability analysis, our findings were Western Europe had the highest rate for median ages and the lowest rate for infant mortality. In addition, in Africa region median age rate was highest for Northern Africa and the mortality rate was lowest in the same region. We also observed that there was a positive correlation along with a negative correlation between median age and infant mortality using the Pearson correlation method. Finally, the median age rate increased and the mortality rate decreased in 2023 compared to 2003. Higher lifestyles, education, health care, and medicine may explain the higher median age rate. It could be interesting to look for a regression model and implemented on this dataset in the future that links each subregion's median age and infant mortality.
