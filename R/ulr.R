#' Fitting unitary linear regression model
#'
#' @description
#' ulr is used to fit unitary linear regression model models
#' @param x, independent variable
#' @param y, dependent variable
#' @details
#' The model is fitted by OLS in the following way:
#' \deqn{B =(X^TX)^{-1}X^TY}
#'
#'
#'
#' @return ulr model
#' @export
ulr <- function(x, y) {
    X <- cbind(rep(1, length(x)), x)
    b_hat <- solve(t(X) %*% X)%*%t(X)%*% y
    model <- b_hat
    attr(model, "class") <- "ulr"
    return(model)
}



