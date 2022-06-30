get_important_cases <- function(x){
  
  size_ <- length(rownames(x))
  len_ <- length(colnames(x))
  
  means <- c()
  
  for(i in 1:len_) {
    means[i] <- mean(x[, i])
  }
  
  cases <- c()
  
  for(i in 1:size_) {
    temp_r <- sum(as.numeric(unlist(x[i, ]) > means))
    cases[i] <- ifelse(temp_r > (len_/2), "Yes", "No")
  }
  
  x$important_cases <- factor(cases, levels = c("Yes", "No"))
  
  return(x)
}