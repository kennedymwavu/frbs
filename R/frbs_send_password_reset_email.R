#' Send password reset email
#'
#' @param email User's email address.
#' @return A named list with the following items:
#' - `email`: Users' email address.
#' - `error`:
#'    - `NULL` if no error code in response
#'    - A list of 2 if response was an error:
#'      - `code`: Error code
#'      - `message`: Error message
#' @details
#' Visit [Firebase Auth REST API docs](https://firebase.google.com/docs/reference/rest/auth#section-send-password-reset-email)
#' for more details
#' @examples
#' \dontrun{
#' frbs_send_password_reset_email("user-email-goes-here")
#' }
#' @export
frbs_send_password_reset_email <- \(email) {
  url_path <- "/v1/accounts:sendOobCode"
  data <- list(email = email, requestType = "PASSWORD_RESET")
  frbs_perform_req(url_path = url_path, data = data)
}
