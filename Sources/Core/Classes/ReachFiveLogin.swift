import BrightFutures
import Reach5

public extension ReachFive {
    func logout(webSessionLogout request: WebSessionLogoutRequest? = nil, revoke token: AuthToken? = nil) -> Future<Void, ReachFiveError> {
        bridge {
            try await self.logout(webSessionLogout: request, revoke: token)
        }
    }

    func loginCallback(tkn: String, scopes: [String]?, origin: String? = nil) -> Future<AuthToken, ReachFiveError> {
        bridge {
            try await self.loginCallback(tkn: tkn, scopes: scopes, origin: origin)
        }
    }

    func authWithCode(code: String, pkce: Pkce) -> Future<AuthToken, ReachFiveError> {
        bridge {
            try await self.authWithCode(code: code, pkce: pkce)
        }
    }
}
