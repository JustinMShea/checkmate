#' Check that an argument is a vector of type numeric
#'
#' @templateVar fn Numeric
#' @template x
#' @template na-handling
#' @inheritParams checkVector
#' @template bounds
#' @param finite [\code{logical(1)}]\cr
#'  Check for only finite values? Default is \code{FALSE}.
#' @template checker
#' @family basetypes
#' @useDynLib checkmate c_check_numeric
#' @export
#' @examples
#' testNumeric(1)
#' testNumeric(1, min.len = 1, lower = 0)
checkNumeric = function(x, lower = -Inf, upper = Inf, finite = FALSE, any.missing = TRUE, all.missing = TRUE, len = NULL, min.len = NULL, max.len = NULL, unique = FALSE, names = NULL) {
  .Call("c_check_numeric", x, lower, upper, finite, any.missing, all.missing, len, min.len, max.len, unique, names, PACKAGE = "checkmate")
}
