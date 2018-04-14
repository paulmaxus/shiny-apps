library(ggplot2)

data = mtcars

x = data$disp
y = data$hp

# what are the optimal parameters?
fit = lm(y~x)
intcptSol = as.double(floor(fit$coefficients[1]))
slopeSol = as.double(round(fit$coefficients[2],2))