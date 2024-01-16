#' Get the Firebase API key
#'
#' Gets your Firebase API key from the env var `FIREBASE_API_KEY`. Make sure
#' you have defined this variable in your .Renviron file.
#'
#' @return String
#' @examples
#' \dontrun{
#' frbs_api_key()
#' }
frbs_api_key <- \() {
  key <- Sys.getenv("FIREBASE_API_KEY")
  if (key == "") {
    stop(
      "Firebase API key not found.",
      " Please define `FIREBASE_API_KEY` in your .Renviron file.",
      " Restart your R session afterwards.",
      call. = FALSE
    )
  }
  key
}
