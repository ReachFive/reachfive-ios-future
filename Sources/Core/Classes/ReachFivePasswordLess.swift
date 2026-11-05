import BrightFutures
import Reach5

public extension ReachFive {

    func startPasswordless(_ request: PasswordLessRequest, scope: [String]? = nil, data: PasswordlessSignupData? = nil, captcha: Captcha? = nil) -> Future<(), ReachFiveError> {
        bridge {
            try await self.startPasswordless(request, scope: scope, data: data, captcha: captcha)
        }
    }

    func verifyPasswordlessCode(verifyAuthCodeRequest: VerifyAuthCodeRequest) -> Future<AuthToken, ReachFiveError> {
        bridge {
            try await self.verifyPasswordlessCode(verifyAuthCodeRequest: verifyAuthCodeRequest)
        }
    }
}
