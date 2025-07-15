import BrightFutures
import Reach5

public extension ReachFive {
    /// Signup with a passkey
    @available(iOS 16.0, *)
    func signup(withRequest request: PasskeySignupRequest) -> Future<AuthToken, ReachFiveError> {
        bridge {
            try await self.signup(withRequest: request)
        }
    }

    /// Starts an auto-fill assisted passkey login request.
    /// The passkey will be shown in the QuickType bar when selecting a field of content type Username.
    /// Start the request automatically early in the view lifecycle (e.g. in viewDidAppear), alone or in reaction to a modal request .IfImmediatelyAvailableCredentials that resulted in an .AuthCanceled.
    /// - Parameters:
    ///   - request: the anchor for the QuickType bar, plus scope and origin configuration
    /// - Returns: an AuthToken when the user was successfully logged in, or a ReachFiveError
    @available(macCatalyst, unavailable)
    @available(iOS 16.0, *)
    func beginAutoFillAssistedPasskeyLogin(withRequest request: NativeLoginRequest) -> Future<AuthToken, ReachFiveError> {
        bridge {
            try await self.beginAutoFillAssistedPasskeyLogin(withRequest: request)
        }
    }

    /// Signs in the user using credentials stored in the keychain, letting the system display all credentials available to choose from in a modal sheet.
    /// - Parameters:
    ///   - request: the anchor for the modal sheet, plus scope and origin configuration
    ///   - requestTypes: choose between Password and/or Passkey
    ///   - mode: choose the behavior when there are no credentials available
    /// - Returns: an AuthToken when the user was successfully logged in, ReachFiveError.AuthCanceled when the user cancelled the modal sheet or when there was no credentials available, or other kinds of ReachFiveError
    func login(withRequest request: NativeLoginRequest, usingModalAuthorizationFor requestTypes: [ModalAuthorization], display mode: Mode) -> Future<LoginFlow, ReachFiveError> {
        bridge {
            try await self.login(withRequest: request, usingModalAuthorizationFor: requestTypes, display: mode)
        }
    }

    /// Signs in the user using credentials stored in the keychain, letting the system display the credentials corresponding to the given username in a modal sheet.
    /// - Parameters:
    ///   - username: the username to log in the user with
    ///   - request: the anchor for the modal sheet, plus scope and origin configuration
    ///   - requestTypes: only passkey are supported for now
    ///   - mode: choose the behavior when there are no credentials available
    /// - Returns: an AuthToken when the user was successfully logged in, ReachFiveError.AuthCanceled when the user cancelled the modal sheet or when there was no credentials available, or other kinds of ReachFiveError
    func login(withNonDiscoverableUsername username: Username, forRequest request: NativeLoginRequest, usingModalAuthorizationFor requestTypes: [NonDiscoverableAuthorization], display mode: Mode) -> Future<AuthToken, ReachFiveError> {
        bridge {
            try await self.login(withNonDiscoverableUsername: username, forRequest: request, usingModalAuthorizationFor: requestTypes, display: mode)
        }
    }

    /// Registers a new passkey for an existing user which currently has none in the keychain, or replace the existing passkey by a new one
    /// - Parameters:
    ///   - request: the anchor for the modal sheet, the friendlyName under which the passkey will be saved, and origin
    ///   - authToken: the token for the currently logged-in user
    /// - Returns: A ReachFiveError, or nothing when the Registration was successfull.
    @available(iOS 16.0, *)
    func registerNewPasskey(withRequest request: NewPasskeyRequest, authToken: AuthToken) -> Future<(), ReachFiveError> {
        bridge {
            try await self.registerNewPasskey(withRequest: request, authToken: authToken)
        }
    }

    @available(iOS 16.0, *)
    func resetPasskeys(withRequest request: ResetPasskeyRequest) -> Future<(), ReachFiveError> {
        bridge {
            try await self.resetPasskeys(withRequest: request)
        }
    }
}
