#' Change email
#'
#' @param id_token String. A Firebase Auth ID token for the user.
#' @param email String. User's new email.
#' @return A named list with the following items:
#' - `localId`:	The uid of the current user.
#' - `email`:	User's email address.
#' - `passwordHash`:	Hash version of password.
#' - `providerUserInfo`:	A named list of of all linked provider objects which
#'      contain "providerId" and "federatedId".
#' - `idToken`:	New Firebase Auth ID token for user.
#' - `refreshToken`:	A Firebase Auth refresh token.
#' - `expiresIn`:	string	The number of seconds in which the ID token expires.
#' - `error`:
#'    - `NULL` if no error code in response
#'    - A list of 2 if response was an error:
#'      - `code`: Error code
#'      - `message`: Error message
#' @details
#' **DISCLAIMER**: Changing a users's email requires that you disable email
#' enumeration protection for your firebase project. This is NOT recommended.
#' - Learn about [email enumeration protection](https://cloud.google.com/identity-platform/docs/admin/email-enumeration-protection?hl=en&authuser=0)
#' - Visit [Firebase Auth REST API docs](https://firebase.google.com/docs/reference/rest/auth#section-change-email)
#' for more details
#' @examples
#' \dontrun{
#' # first sign in user and get the 'id_token':
#' user <- frbs_sign_in(email = "user@gmail.com", password = "password")
#' id_token <- user$idToken
#'
#' # change email:
#' response <- frbs_change_email(
#'   id_token = id_token,
#'   email = "new.email@mail.com"
#' )
#' response
#' }
#' @export
frbs_change_email <- \(id_token, email) {
  url_path <- "/v1/accounts:update"
  data <- list(
    idToken = id_token,
    email = email,
    returnSecureToken = TRUE
  )
  frbs_perform_req(url_path = url_path, data = data)
}
