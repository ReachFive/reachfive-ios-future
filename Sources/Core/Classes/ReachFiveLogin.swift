import BrightFutures
import Foundation
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

    func login(
        withProvider provider: String,
        idToken: String,
        nonce: Pkce,
        scope: [String]? = nil,
        origin: String? = nil,
        givenName: String? = nil,
        familyName: String? = nil
    ) -> Future<AuthToken, ReachFiveError> {
        bridge {
            try await self.login(
                withProvider: provider,
                idToken: idToken,
                nonce: nonce,
                scope: scope,
                origin: origin,
                givenName: givenName,
                familyName: familyName
            )
        }
    }

    func authWithCode(code: String, pkce: Pkce, redirectUri: URL? = nil) -> Future<AuthToken, ReachFiveError> {
        bridge {
            try await self.authWithCode(
                code: code,
                pkce: pkce,
                redirectUri: redirectUri
            )
        }
    }
}
