#Loading Dataset
path = read.csv("Cleaned_Health_Dataset.csv", header = TRUE, stringsAsFactors = F)

# Convert to factors BEFORE train/test split
path$exercise      <- factor(path$exercise)
path$sugar_intake  <- factor(path$sugar_intake)
path$smoking       <- factor(path$smoking)
path$alcohol       <- factor(path$alcohol)
path$married       <- factor(path$married)
path$profession    <- factor(path$profession)
path$health_risk   <- factor(path$health_risk, levels=c("low","high"))

#(1) Splitting the data into training and test data
set.seed(2)
train <- sample(1:nrow(path), (0.6)*nrow(path))
train.path <- path[train,]
test.path <- path[-train,]
summary(train.path)
summary(test.path)

nrow(train.path)
nrow(test.path)

table(train.path$health_risk)
table(test.path$health_risk)

# (2) Logistic regression and display the results
logit.reg <- glm(health_risk ~ age + exercise + sleep + sugar_intake + smoking +alcohol
                 + married + profession + bmi,
                 data = train.path, family = "binomial")

#(3) Interpretation of significancy and coefficient
summary(logit.reg)

#(4) Accuracy on the training & test data

# Training Data
logit.pred_train <- predict(logit.reg, train.path, type = "response")

logit.pred_Class_train <- ifelse(logit.pred_train > 0.3, 1, 0)

actual_train <- ifelse(train.path$health_risk == "high", 1, 0)

confusion_matrix_train <- table(Predicted = logit.pred_Class_train, Actual = actual_train);confusion_matrix_train

true_pos_train <- confusion_matrix_train[2,2]
true_neg_train <- confusion_matrix_train[1,1]
false_pos_train <- confusion_matrix_train[2,1]
false_neg_train <- confusion_matrix_train[1,2]

accuracy_train <- (true_pos_train + true_neg_train) / (true_pos_train + true_neg_train + false_pos_train + false_neg_train);accuracy_train

#Testing Data
logit.pred_test <- predict(logit.reg, test.path, type = "response")

library(ggplot2)
ggplot(data.frame(prob = logit.pred_train), aes(x = prob)) +
  geom_histogram(bins = 30, fill = "#00BFC4", color = "white", alpha = 0.8) +
  labs(
    title = "Distribution of Predicted Probabilities",
    x = "Predicted probability of High Risk",
    y = "Count"
  ) +
  theme_minimal(base_size = 14)

logit.pred_Class_test <- ifelse(logit.pred_test > 0.3, 1, 0)

ggplot(data.frame(class = logit.pred_Class_test), aes(x = factor(class))) +
  geom_bar(fill = "#00BFC4") +
  labs(
    title = "Distribution of Predicted Classes",
    x = "Predicted Class (0 = Low Risk, 1 = High Risk)",
    y = "Count"
  ) +
  theme_minimal(base_size = 14)

actual_test <- ifelse(test.path$health_risk == "high", 1, 0)

confusion_matrix_test <- table(Predicted = logit.pred_Class_test, Actual = actual_test);confusion_matrix_test

true_pos_test <- confusion_matrix_test[2,2]
true_neg_test <- confusion_matrix_test[1,1]
false_pos_test <- confusion_matrix_test[2,1]
false_neg_test <- confusion_matrix_test[1,2]

sensitivity_test <- true_pos_test / (true_pos_test + false_neg_test);sensitivity_test
specificity_test <- true_neg_test / (true_neg_test + false_pos_test);specificity_test
false_pos_rate_test <- false_pos_test / (false_pos_test + true_neg_test);false_pos_rate_test
false_neg_rate_test <- false_neg_test / (false_neg_test + true_pos_test);false_neg_rate_test 
accuracy_test <- (true_pos_test + true_neg_test) / (true_pos_test + true_neg_test + false_pos_test + false_neg_test);accuracy_test

















