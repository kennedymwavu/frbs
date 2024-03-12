#' Sign in a user anonymously
#'
#' @return A named list with the following items:
#' - `idToken`: A Firebase Auth ID token for the newly created user.
#' - `email`: Since the user is anonymous, this should be empty.
#' - `refreshToken`: A Firebase Auth refresh token for the newly created user.
#' - `expiresIn`: The number of seconds in which the ID token expires.
#' - `localId`: The uid of the newly created user.
#' - `error`:
#'    - `NULL` if no error code in response
#'    - A list of 2 if response was an error:
#'      - `code`: Error code
#'      - `message`: Error message
#' @details
#' To use sign in users anonymously, you must first enable the
#' Anonymous sign in method in your firebase project.
#'
#' Go to [Firebase console](https://console.firebase.google.com) and check your
#' *Sign-in* providers under the *Sign-in Methods* tab in the *Authentication*
#' service and make sure *Anonymous* is enabled.
#'
#' Visit [Firebase Auth REST API docs](https://firebase.google.com/docs/reference/rest/auth#section-sign-in-anonymously)
#' for more details.
#' @examples
#' \dontrun{
#' user <- frbs_sign_in_anonymously()
#' user
#' }
#' @export
frbs_sign_in_anonymously <- \() {
  url_path <- "/v1/accounts:signUp"
  data <- list(returnSecureToken = TRUE)
  frbs_perform_req(url_path = url_path, data = data)
}
