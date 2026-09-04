# Changelog

## Unreleased

## v11.1.0

### New features
- Captcha support on every endpoint this SDK calls that the server can protect: `loginWithPassword`, `signup(profile:)`, `requestPasswordReset`, `requestAccountRecovery`, `startPasswordless`, `updateEmail` and `login(withRequest:usingModalAuthorizationFor:display:)` take a new optional `captcha: Captcha?`, a token and its `CaptchaProvider` (`.reCaptcha`, `.captchaFox`, or any name the server gains later). On the modal sign-in it only applies if a saved password is selected.

## v11.0.0

### Breaking changes
- Changed type of redirect URL fields to URL instead of String
- `Provider.login` takes a `Presentation` instead of a `UIViewController?` to handle the different type of implicit conformance.
- CocoaPods support is dropped, the SDK is distributed exclusively with Swift Package Manager.
  If you were integrating with CocoaPods, note that the pod re-exported `UIKit` and `Foundation` through its generated umbrella header, so `import Reach5` brought them into scope implicitly. It no longer does: add the explicit `import UIKit` / `import Foundation` your files need.

### New Features
- Support session devices: `listSessionDevices(authToken:)` and `deleteSessionDevice(id:authToken:)`
- New method `login(withProvider:…)`, intended for integrators writing their own `Provider`: exchanges the ID token issued by a native provider SDK for a ReachFive `AuthToken`.

## v10.0.1
- Fix missing import

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
