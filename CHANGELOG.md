# Changelog


## Unreleased

## v10.0.0
### Breaking changes
- Support new option to prevent login with unverified identifier after a signup. Method signup returns a `SignupFlow` that can be an `AchievedLogin(authToken: AuthToken)` or an `AwaitingIdentifierVerification`

### New Features
- support parameter origin to requestPasswordReset
- allow to trust device during mfa credential registering
- support action parameter for step up and mfa credential registering

## v9.1.0
- Update for Reach5 9.1.0 with new logout options

## v9.0.0
- Introducing this SDK to help you transition gently from Future to async/await. See the use guide at https://developer.reachfive.com/sdk-ios/guides/migrate-reach5future.html
