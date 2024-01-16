#' Delete account
#'
#' @param id_token The Firebase ID token of the user to delete.
#' @return A named list with the following items:
#' - `error`: See Details.
#' @details
#' - `error`:
#'    - `NULL` if no error code in response
#'    - A list of 2 if response was an error:
#'      - `code`: Error code
#'      - `message`: Error message
#' Visit [Firebase Auth REST API docs](https://firebase.google.com/docs/reference/rest/auth#section-delete-account)
#' for more details
frbs_delete_account <- \(id_token) {
  url_path <- "/v1/accounts:delete"
  data <- list(idToken = id_token)
  frbs_perform_req(url_path = url_path, data = data)
}
