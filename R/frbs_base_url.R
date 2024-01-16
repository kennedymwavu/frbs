#' Get the base url for Firebase Auth
#'
#' @param endpoint The endpoint of a request.
#' Valid values:
#' - "identitytoolkit" (default)
#' - "securetoken"
#' @return String. Base url.
#' @examples
#' \dontrun{
#' frbs_base_url()
#' }
frbs_base_url <- \(endpoint = "identitytoolkit") {
  switch(
    EXPR = endpoint,
    identitytoolkit = "https://identitytoolkit.googleapis.com",
    securetoken = "https://securetoken.googleapis.com",
    "https://identitytoolkit.googleapis.com"
  )
}
