max_resid <- function(x){
  table_data <- table(test_data)
  d <- chisq.test(table_data)$stdres
  ind <- which(d == max(d), arr.ind = TRUE)
  row_names <- rownames(ind)
  col_names <- colnames(d)[which(d == max(d), arr.ind = TRUE, useNames = F)[2]]
  return(c(row_names,col_names))
}