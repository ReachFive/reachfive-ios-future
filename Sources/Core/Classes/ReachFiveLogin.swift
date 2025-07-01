import Foundation
import BrightFutures
import Reach5

public extension ReachFiveFuture {

    func logout() -> Future<(), ReachFiveError> {
        bridge { 
            await self.reachfive.logout()
        }
    }

    func refreshAccessToken(authToken: AuthToken) -> Future<AuthToken, ReachFiveError> {
        bridge { 
            await self.reachfive.refreshAccessToken(authToken: authToken)
        }
    }

    func loginCallback(tkn: String, scopes: [String]?, origin: String? = nil) -> Future<AuthToken, ReachFiveError> {
        bridge { 
            await self.reachfive.loginCallback(tkn: tkn, scopes: scopes, origin: origin)
        }
    }

    func authWithCode(code: String, pkce: Pkce) -> Future<AuthToken, ReachFiveError> {
        bridge { 
            await self.reachfive.authWithCode(code: code, pkce: pkce)
        }
    }
}
