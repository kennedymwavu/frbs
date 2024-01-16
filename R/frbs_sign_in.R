#' Sign in a user with email & password
#'
#' @param email User email
#' @param password User password
#' @return A named list with the following items:
#' - `idToken`: A Firebase Auth ID token for the authenticated user.
#' - `email`: The email for the authenticated user.
#' - `refreshToken`: A Firebase Auth refresh token for the authenticated user.
#' - `expiresIn`: The number of seconds in which the ID token expires.
#' - `localId`: The uid of the authenticated user.
#' - `registered`: Whether the email is for an existing account.
#' - `error`: See Details.
#' @details
#' - `error`:
#'    - `NULL` if no error code in response
#'    - A list of 2 if response was an error:
#'      - `code`: Error code
#'      - `message`: Error message
#' Visit [Firebase Auth REST API docs](https://firebase.google.com/docs/reference/rest/auth#section-sign-in-email-password)
#' for more details
#' @export
frbs_sign_in <- \(email, password) {
  url_path <- "/v1/accounts:signInWithPassword"
  data <- list(email = email, password = password, returnSecureToken = TRUE)
  frbs_perform_req(url_path = url_path, data = data)
}
