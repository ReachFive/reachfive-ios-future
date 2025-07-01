import BrightFutures
import Foundation
import Reach5

public extension ReachFiveFuture {
    func signup(profile: ProfileSignupRequest, redirectUrl: String? = nil, scope: [String]? = nil, origin: String? = nil) -> Future<AuthToken, ReachFiveError> {
        bridge {
            await self.reachfive.signup(profile: profile, redirectUrl: redirectUrl, scope: scope, origin: origin)
        }
    }

    func loginWithPassword(
        email: String? = nil,
        phoneNumber: String? = nil,
        customIdentifier: String? = nil,
        password: String,
        scope: [String]? = nil,
        origin: String? = nil
    ) -> Future<LoginFlow, ReachFiveError> {
        bridge {
            await self.reachfive.loginWithPassword(email: email, phoneNumber: phoneNumber, customIdentifier: customIdentifier, password: password, scope: scope, origin: origin)
        }
    }
}
