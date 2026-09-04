import BrightFutures
import Foundation
import Reach5

public extension ReachFive {
    func signup(profile: ProfileSignupRequest, redirectUrl: URL? = nil, scope: [String]? = nil, origin: String? = nil, captcha: Captcha? = nil) -> Future<SignupFlow, ReachFiveError> {
        bridge {
            try await self.signup(profile: profile, redirectUrl: redirectUrl, scope: scope, origin: origin, captcha: captcha)
        }
    }

    func loginWithPassword(
        email: String? = nil,
        phoneNumber: String? = nil,
        customIdentifier: String? = nil,
        password: String,
        scope: [String]? = nil,
        origin: String? = nil,
        captcha: Captcha? = nil
    ) -> Future<LoginFlow, ReachFiveError> {
        bridge {
            try await self.loginWithPassword(email: email, phoneNumber: phoneNumber, customIdentifier: customIdentifier, password: password, scope: scope, origin: origin, captcha: captcha)
        }
    }
}
