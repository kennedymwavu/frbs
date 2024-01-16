#' Sign up with email/password
#'
#' @param email The email for the user to create.
#' @param password The password for the user to create.
#' @return A named list with the following items:
#' - `idToken`: A Firebase Auth ID token for the newly created user.
#' - `email`: The email for the newly created user.
#' - `refreshToken`: A Firebase Auth refresh token for the newly created user.
#' - `expiresIn`: The number of seconds in which the ID token expires.
#' - `localId`: The uid of the newly created user.
#' - `error`: See Details.
#' @details
#' - `error`:
#'    - `NULL` if no error code in response
#'    - A list of 2 if response was an error:
#'      - `code`: Error code
#'      - `message`: Error message
#' Visit [Firebase Auth REST API docs](https://firebase.google.com/docs/reference/rest/auth#section-create-email-password)
#' for more details
frbs_sign_up <- \(email, password) {
  url_path <- "/v1/accounts:signUp"
  data <- list(email = email, password = password, returnSecureToken = TRUE)
  frbs_perform_req(url_path = url_path, data = data)
}
