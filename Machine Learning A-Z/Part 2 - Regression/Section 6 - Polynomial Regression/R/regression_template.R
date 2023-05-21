# Regression Template

# Importing the dataset
dataset = read.csv()

# Splitting the dataset into the Training set and Test set
# # install.packages('caTools')
# library(caTools)
# set.seeds(123)
# split = sample.split(dataset$y, SplitRatio = 2/3)
# training_Set = subset(dataset, split == TRUE)
# test_set = subset(dataset, split == FALSE)

# Feature Scaling
# training_set = scale(traning_set)
# test_set = scale(test_set)

# Fitting Linear Regression to the dataset
# Create your regressor here

# Predicting a new result
y_pred = predict(regressor, data.frame(x = value))

# Visualising the Regression Model results
library(ggplot2)
ggplot() + 
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') +
  geom_line(aes(x = dataset$x, y = predict(regressor, newdata = dataset)),
                colour = 'blue') + 
  ggtitle('Title') + 
  xlab('x') +
  ylab('y')

# Visualising the Regression Model results (for higher resolution and smoother curve)
library(ggplot2)
x_grid = seq(min(dataset$x), max(dataset$x), 0.1)
ggplot() + 
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') +
  geom_line(aes(x = dataset$x, y = predict(regressor, newdata = data.frame(x = X_grid))),
            colour = 'blue') + 
  ggtitle('Title') + 
  xlab('x') +
  ylab('y')

  
  