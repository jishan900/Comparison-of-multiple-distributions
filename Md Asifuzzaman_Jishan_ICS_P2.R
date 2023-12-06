library(skimr)
library(ggplot2)
library(tidyverse)
library(dplyr)
library(rstatix)
library(ggplot2)
library(ggpubr)
library(gridExtra)
library(car)
library(rstatix)
library(emmeans)
library(TukeyC)
library(cowplot)

# Read the data set
airbnb_data <- read.csv("D:/Germany/Study Files-TUD/TU Dortmund/--------Semester-8-Winter Term--------2023-2024/ICS/2023/Report-2/Airbnb_data.csv")

missing_values <- sum(is.na(airbnb_data))

print(paste("Total missing values:", missing_values))

cbind(lapply(lapply(airbnb_data, is.na),sum))

#Task 1: Please use descriptive statistics to briefly describe the distribution of these two variables. For discrete variables, 
# consider the count of the data, for continuous variables, consider the distribution of the data and 
# the central tendency of the different groups.
categories <- factor(airbnb_data$host_response_time, labels = c("within a few hours", "within an hour", "within a day"))
airbnb_data <- mutate(airbnb_data, categories)

# Descriptive analysis
# Measure of central tendency for host_response_time
airbnb_data %>% group_by(categories) %>% summarise(count = n(), min(log_price), max(log_price), mean(log_price), median(log_price), sd(log_price), var(log_price), IQR(log_price))

# Measure of central tendency for log_price
airbnb_data %>% summarise(count = n(), min(log_price), max(log_price), mean(log_price), median(log_price), sd(log_price), var(log_price), IQR(log_price))

# Subset the data 
Subset_1 <- subset(airbnb_data, host_response_time == "within a few hours")
Subset_2 <- subset(airbnb_data, host_response_time == "within an hour")
Subset_3 <- subset(airbnb_data, host_response_time == "within a day")

# Task 2: Do the log_price values differ between the categories of host_response_time values? Conduct a global test.
# Create QQ plots
plot1 <- ggplot(Subset_1, aes(sample = log_price)) +
  stat_qq(conf.int = FALSE, conf.int.level = 0) +
  stat_qq_line(col = "blue") +
  ggtitle("QQ Plot - within a few hours") +
  xlab("Theoretical Quantiles") +
  ylab("Sample Quantiles") 

plot2 <- ggplot(Subset_2, aes(sample = log_price)) +
  stat_qq(conf.int = FALSE, conf.int.level = 0) +
  stat_qq_line(col = "blue") +
  ggtitle("QQ Plot - within an hour") +
  xlab("Theoretical Quantiles") +
  ylab("Sample Quantiles")


plot3 <- ggplot(Subset_3, aes(sample = log_price)) + stat_qq(conf.int = FALSE, conf.int.level = 0) + stat_qq_line(col = "blue") + ggtitle("QQ Plot - within a day") + 
  xlab("Theoretical Quantiles") +
  ylab("Sample Quantiles")


# Merge the plots
Merge <-  plot_grid(plot1, plot2, plot3, ncol = 2)
Merge

# Homogeneity of Variance leveneTest
Assumptions <- leveneTest(airbnb_data$log_price, airbnb_data$categories)
Assumptions

# ANOVA test
global_test <- aov(airbnb_data$log_price ~ airbnb_data$categories, airbnb_data)
summary(global_test)

# Task 3: Are there pairwise differences between the resulting log_price? Consider all pairs of categories and conduct two-sample tests. 
# Adjust the test results with the Bonferroni correction and with the Tukey's Honest Significant Difference (HSD). Please also
# calculate the Tukey's confidence interval.

#Non adjustment
Without <- pairwise.t.test(airbnb_data$log_price, airbnb_data$categories, p.adj = "none", pool.sd = TRUE, alternative = "two.sided", var.equal = TRUE)
Without

#adjusted with bonferroni
bonferroni <- pairwise.t.test(airbnb_data$log_price, airbnb_data$categories, pool.sd = TRUE, p.adjust.method = "bonferroni", alternative = "two.sided", var.equal = TRUE)
bonferroni

# adjusted with tukeys test

tukey <- TukeyHSD(global_test)
tukey

# Task 4: Compare the results of these two correction methods with the non-adjusted test and give a reasonable explanation.
# Calculate Tukey's confidence intervals
tukey_confidence_intervals <- confint(global_test, level = 0.95)
tukey_confidence_intervals

