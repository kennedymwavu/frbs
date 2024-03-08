#' Update user profile
#'
#' Update a user's profile (display name / photo URL).
#' @param id_token String.	A Firebase Auth ID token for the user.
#' @param display_name String.	User's new display name. Defaults to `NULL`.
#' @param photo_url String.	User's new photo url. Defaults to `NULL`.
#' @param delete_attribute Character vector of attributes to delete.
#' Either "DISPLAY_NAME" or "PHOTO_URL". This will nullify these values.
#' Defaults to `NULL`.
#' @return A named list with the following items:
#' - `localId`:	The uid of the current user.
#' - `email`:	User's email address.
#' - `displayName`: User's new display name.
#' - `photoUrl`: User's new photo url.
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
#' Visit [Firebase Auth REST API docs](https://firebase.google.com/docs/reference/rest/auth#section-update-profile)
#' for more details
#' @export
frbs_update_profile <- \(
  id_token,
  display_name = NULL,
  photo_url = NULL,
  delete_attribute = NULL
) {
  url_path <- "/v1/accounts:update"
  data <- list(
    idToken = id_token,
    displayName = display_name,
    photoUrl = photo_url,
    deleteAttribute = delete_attribute,
    returnSecureToken = TRUE
  ) |>
    Filter(f = Negate(is.null))
  frbs_perform_req(url_path = url_path, data = data)
}
