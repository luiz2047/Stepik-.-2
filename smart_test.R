smart_test <- function(x) {
  table1 <- table(x)
  if (any(table1 < 5)){
    l <- fisher.test(table1)
    return(l$p.value)
  } else {
    l <- chisq.test(table1)
    vec <- c(l$statistic, l$parameter, l$p.value)
    return(vec)
  }
}



