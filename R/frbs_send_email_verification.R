#' Send email verification
#'
#' @param id_token The Firebase ID token of the user to verify.
#' @return A named list with the following items:
#' - `email`: The email of the account.
#' - `error`: See Details.
#' @details
#' - `error`:
#'    - `NULL` if no error code in response
#'    - A list of 2 if response was an error:
#'      - `code`: Error code
#'      - `message`: Error message
#' Visit [Firebase Auth REST API docs](https://firebase.google.com/docs/reference/rest/auth#section-send-email-verification)
#' for more details
frbs_send_email_verification <- \(id_token) {
  url_path <- "/v1/accounts:sendOobCode"
  data <- list(idToken = id_token, requestType = "VERIFY_EMAIL")
  frbs_perform_req(url_path = url_path, data = data)
}
