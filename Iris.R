iris_num <- select_if(iris,is.numeric)
iris_bin <- apply(iris_num, 2, function(x) x>mean(x))
iris_sum <- apply(iris_bin, 1, function(x) sum(x) >= 3)
iris$important_cases <- factor(iris_sum, levels = c(FALSE, TRUE), labels = c('No', 'Yes'))