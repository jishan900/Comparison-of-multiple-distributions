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
This study involved doing a comparative analysis of different tests to examine the correlation between the status of host response time and its influence on log price. The dataset was sourced from the Inside Airbnb website for the Seattle, Washington, United States region. This dataset included 232 observations with a categorical variable ‘host response time’ and continuous variable ‘log price’. The ‘host response time’ variable was categorized into three levels: ‘within a few hours’, ‘within a day’ and ‘within an hour’. The dataset was precisely organized and did not contain any missing values throughout.

The main objective of this study was to calculate the correlation and individual disparities between the log price and the host response time, with specific emphasis on three distinct categories. Initially, we used descriptive statistics on these two variables. Findings indicated that ‘within a few hours’ exhibits the highest variability, reflected in elevated interquartile range, standard deviation, and variance values. This suggested potential complexity and larger information in interpreted response times within this category. Moreover, Figure 1 employed Q-Q plot to assess data distribution within host response time categories, revealing that ‘within a day’ approximates a normal distribution, while ‘within a few hours’ and ‘within an hour’ exhibited deviations with scattered data points. After that, we implemented Levene’s and ANOVA methods to see the categories differences. Levene's test confirmed equal population variances ($p$-value = 0.18) among host response time groups. ANOVA revealed a significant effect of the host response time category on log price ($p$-value = 0.0276), rejecting the null hypothesis of no differences among categories.

After that, pairwise $t$-tests were employed to compare host response time categories, focusing on rejecting or not rejecting the null hypothesis of equal distribution. Without adjustment, ‘within an hour’ and ‘within a day’ showed a significant difference ($p$ = 0.0081), while other comparisons were non-significant. Bonferroni correction, aimed to reduce type I error, led to increased $p$-values, rendering all comparisons non-significant except ‘within an hour’ and ‘within a day’ because they showed a significant difference ($p$ = 0.024). Tukey's confidence intervals further supported these findings, indicating no significant differences in response times between ‘within a few hours’ and ‘within an hour’ or ‘within a day’. However, a statistically significant difference was observed between ‘within a day’ and ‘within an hour’ ($p$ = 0.0219), suggesting distinct temporal patterns in these categories. In conclusion, this study provided evidence of a significant relationship between host response time and log price. 
![image](https://github.com/jishan900/Comparison-of-multiple-distributions/assets/32738421/4e5fd461-56c2-446f-b033-adcb95e26a1d)
