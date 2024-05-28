
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `frbs`

<!-- badges: start -->
<!-- badges: end -->

R wrapper for [Firebase Authentication REST
API](https://firebase.google.com/docs/reference/rest/auth).

Designed to be used on the backend of your R applications, whether web
or non-web.

`{frbs}` enables you to integrate Firebase Authentication services
seamlessly into your projects, allowing for user authentication, account
management, and other authentication-related tasks.

Suitable if you need absolute full control on how you build & customize
your login & registration process/pages, while still using Firebase
Auth.

## Installation

You can install the development version of `{frbs}` like so:

``` r
remotes::install_github("kennedymwavu/frbs")
```

## Usage

1.  Create a [Firebase project](https://console.firebase.google.com/).

2.  Grab the project’s API key and place it in your `.Renviron` as
    `FIREBASE_API_KEY`:

    ``` r
    FIREBASE_API_KEY = Your-API-Key-Goes-Here
    ```

3.  Restart your R session.

4.  Connect to your frontend.

Functions in the package are named similarly to the descriptions in the
[Firebase Authentication REST
API](https://firebase.google.com/docs/reference/rest/auth) docs, and
they all have the prefix `frbs_`.

These are the exported ones:

- `frbs_sign_up(email, password)`: Sign up user with email/password.
- `frbs_send_email_verification(id_token)`: Send email verification.
- `frbs_sign_in(email, password)`: Sign in a user with email & password.
- `frbs_sign_in_anonymously()`: Sign in a user anonymously.
- `frbs_send_password_reset_email(email)`: Send password reset email.
- `frbs_change_email(id_token, email)`: Change user email.
- `frbs_change_password(id_token, password)`: Change user password.
- `frbs_update_profile(id_token, ...)`: Update user profile.
- `frbs_delete_account(id_token)`: Delete user account.
- `frbs_get_user_data(id_token)`: Get user data from firebase.
- `frbs_exchange_custom_token(token)`: Exchange custom token for an ID
  and refresh token.
- `frbs_exchange_refresh_token(refresh_token)`: Exchange a refresh token
  for an ID token.

## Examples

Examples are provided
[here](https://github.com/kennedymwavu/frbs-examples).

## Related projects

- [{firebase}](https://github.com/JohnCoene/firebase)
- [{polished}](https://github.com/Tychobra/polished)
