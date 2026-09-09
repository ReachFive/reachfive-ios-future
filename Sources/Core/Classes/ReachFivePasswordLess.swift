import BrightFutures
import Reach5

public extension ReachFive {

    func startPasswordless(_ request: PasswordLessRequest, captcha: Captcha? = nil) -> Future<(), ReachFiveError> {
        bridge {
            try await self.startPasswordless(request, captcha: captcha)
        }
    }

    func verifyPasswordlessCode(verifyAuthCodeRequest: VerifyAuthCodeRequest) -> Future<AuthToken, ReachFiveError> {
        bridge {
            try await self.verifyPasswordlessCode(verifyAuthCodeRequest: verifyAuthCodeRequest)
        }
    }
}
