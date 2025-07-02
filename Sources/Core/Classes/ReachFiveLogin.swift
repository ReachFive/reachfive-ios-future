import Foundation
import BrightFutures
import Reach5

public extension ReachFive {

    func logout() -> Future<(), ReachFiveError> {
        bridge {
            await self.logout()
        }
    }

    func refreshAccessToken(authToken: AuthToken) -> Future<AuthToken, ReachFiveError> {
        bridge {
            await self.refreshAccessToken(authToken: authToken)
        }
    }

    func loginCallback(tkn: String, scopes: [String]?, origin: String? = nil) -> Future<AuthToken, ReachFiveError> {
        bridge {
            await self.loginCallback(tkn: tkn, scopes: scopes, origin: origin)
        }
    }

    func authWithCode(code: String, pkce: Pkce) -> Future<AuthToken, ReachFiveError> {
        bridge {
            await self.authWithCode(code: code, pkce: pkce)
        }
    }
}
