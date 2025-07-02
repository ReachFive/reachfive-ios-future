import Foundation
import BrightFutures
import Reach5

public extension ReachFive {

    func startPasswordless(_ request: PasswordLessRequest) -> Future<(), ReachFiveError> {
        bridge {
            await self.startPasswordless(request)
        }
    }

    func verifyPasswordlessCode(verifyAuthCodeRequest: VerifyAuthCodeRequest) -> Future<AuthToken, ReachFiveError> {
        bridge {
            await self.verifyPasswordlessCode(verifyAuthCodeRequest: verifyAuthCodeRequest)
        }
    }
}
