#' Change password
#'
#' @param id_token A Firebase Auth ID token for the user.
#' @param password User's new password.
#' @return A named list with the following items:
#' - `localId`:	The uid of the current user.
#' - `email`:	User's email address.
#' - `passwordHash`:	Hash version of password.
#' - `providerUserInfo`:	A named list of of all linked provider objects which
#'      contain "providerId" and "federatedId".
#' - `idToken`:	New Firebase Auth ID token for user.
#' - `refreshToken`:	A Firebase Auth refresh token.
#' - `expiresIn`:	string	The number of seconds in which the ID token expires.
#' - `error`: See Details.
#' @details
#' - `error`:
#'    - `NULL` if no error code in response
#'    - A list of 2 if response was an error:
#'      - `code`: Error code
#'      - `message`: Error message
#' Visit [Firebase Auth REST API docs](https://firebase.google.com/docs/reference/rest/auth#section-change-password)
#' for more details
#' @export 
frbs_change_password <- \(id_token, password) {
  url_path <- "/v1/accounts:update"
  data <- list(
    idToken = id_token,
    password = password,
    returnSecureToken = TRUE
  )
  frbs_perform_req(url_path = url_path, data = data)
}
