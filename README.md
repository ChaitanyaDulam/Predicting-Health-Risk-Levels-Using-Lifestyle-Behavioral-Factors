# Predictive Modeling For Health Risk Classification<img width="1298" height="658" alt="Screenshot 2026-01-06 at 12 56 25 PM" src="https://github.com/user-attachments/assets/1085d43d-c91e-46ce-96f6-040620b36f8b" />
<img width="1298" height="658" alt="Screenshot 2026-01-06 at 12 56 33 PM" src="https://github.com/user-attachments/assets/1b617869-6cf1-45f6-a917-b4e6e70610b7" />
<img width="1352" height="878" alt="Screenshot 2026-01-06 at 12 56 54 PM" src="https://github.com/user-attachments/assets/f9c07878-b57c-46a3-a7db-f216b67d1ddb" />
<img width="1298" height="658" alt="Screenshot 2026-01-06 at 12 55 21 PM" src="https://github.com/user-attachments/assets/4327bc5d-27d1-44c6-b93c-03fcef221470" />
<img width="1298" height="658" alt="Screenshot 2026-01-06 at 12 56 05 PM" src="https://github.com/user-attachments/assets/1cd45286-8420-4924-ad97-730c15b2c83d" />

The goal of this project is to predict whether a person has High health risk (1) or Low health risk (0) using logistic regression and decision tree modeling to identify the strongest predictors of health risk multiple lifestyle, demographic, and behavioral indicators. 

******Data Exploration & Visualization:******

**Dependent Variable (DV):**

health_risk

Binary outcome 0 = Low, 1 = High

**Independent Variables (IVs):**

Includes lifestyle, behavioral, and demographic factors:

1. Age

2. BMI

3. Sleep hours

4. Exercise habits

5. Sugar intake

6. Smoking

7. Alcohol usage

8. Marital status

9. Profession

**Identify Outliers**

Boxplots

IQR rule

**Results:**

BMI had 6 outliers

Age and Sleep had no outliers

**Decision Tree Model:**

**(i) Train–Test Split:**

Train: 2/3

Test: 1/3

**(ii) Model Exploration:**

Understanding splitting rules

Decision path analysis

Interpretation of tree depth and node purity

Visualization

**(iii) Full decision tree plotted with:**

labeled nodes

entropy or Gini

color-coded terminal leaves

Parameters adjusted as needed (e.g., cp, minsplit).

**(iv) Evaluation:**

Accuracy

Type I Error (False Positive Rate)

Type II Error (False Negative Rate)

**Logistic Regression:**

**(i) Train and Test**

Train: 2/3

Test: 1/3

**(ii) Interpretation of Coefficients**

Change in log-odds of high health risk

Impact of 1-unit increase in a predictor

**(iii) Key components interpreted:**

Significance (p-values)

Odds ratios

Confidence intervals

Most influential variables

Practical explanation of the findings

**Conclusion**

This project successfully explored and modeled the factors associated with overall health risk using a structured data-driven approach. Through comprehensive data cleaning, visualization, and statistical modeling, identified meaningful patterns linking lifestyle and behavioral variables to health outcomes.

The analysis revealed that certain predictors—particularly BMI, exercise habits, smoking, alcohol consumption, and sleep duration—show a strong association with elevated health risk. The Decision Tree model provided intuitive rule-based insights into how combinations of these factors contribute to high-risk profiles, while the Logistic Regression model quantified the impact of each variable and highlighted their relative importance in shifting the probability of high health risk.

Outlier management, especially in BMI, ensured that the models remained stable and robust without removing excessive data. Both models performed reliably on the test set, helping validate the findings.

Overall, this project demonstrates that a combination of lifestyle indicators can effectively predict whether an individual falls into a high or low health risk category. These insights hold practical value for healthcare professionals, public health agencies, and individuals seeking preventive guidance. By identifying high-risk patterns early, interventions can be targeted more efficiently, ultimately contributing to improved long-term health outcomes.
