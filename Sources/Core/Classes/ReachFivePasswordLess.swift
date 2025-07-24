import BrightFutures
import Reach5

public extension ReachFive {

    func startPasswordless(_ request: PasswordLessRequest) -> Future<(), ReachFiveError> {
        bridge {
            try await self.startPasswordless(request)
        }
    }

    func verifyPasswordlessCode(verifyAuthCodeRequest: VerifyAuthCodeRequest) -> Future<AuthToken, ReachFiveError> {
        bridge {
            try await self.verifyPasswordlessCode(verifyAuthCodeRequest: verifyAuthCodeRequest)
        }
    }
}
