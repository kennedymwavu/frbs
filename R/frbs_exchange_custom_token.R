#' Exchange custom token for an ID and refresh token
#'
#' Exchanges a custom Auth token for an ID and refresh token
#' @param token String. A Firebase Auth custom token from which to create
#' an ID and refresh token pair
#' @return A named list with the following items:
#' - `idToken`:	A Firebase Auth ID token generated from the provided custom token.
#' - `refreshToken`:	A Firebase Auth refresh token generated from the provided custom token.
#' - `expiresIn`:	The number of seconds in which the ID token expires.
#' - `error`:
#'    - `NULL` if no error code in response
#'    - A list of 2 if response was an error:
#'      - `code`: Error code
#'      - `message`: Error message
#' @details
#' Visit [Firebase Auth REST API docs](https://firebase.google.com/docs/reference/rest/auth#section-verify-custom-token)
#' for more details
#' @export
frbs_exchange_custom_token <- \(token) {
  url_path <- "/v1/accounts:signInWithCustomToken"
  data <- list(token = token, returnSecureToken = TRUE)
  frbs_perform_req(url_path = url_path, data = data)
}
