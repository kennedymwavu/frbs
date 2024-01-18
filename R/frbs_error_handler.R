#' frbs error handler
#'
#' Used in the `tryCatch()` blocks of `frbs_*()` functions
#' @param e The error.
frbs_error_handler <- \(e) {
  resp_err <- httr2::last_response()
  if (!is.null(resp_err)) {
    resp_err <- httr2::resp_body_json(resp_err)$error
    err_list <- list(
      error = list(
        code = resp_err$code,
        message = resp_err$message
      )
    )
    return(err_list)
  }
  stop(conditionMessage(e), call. = FALSE)
}
