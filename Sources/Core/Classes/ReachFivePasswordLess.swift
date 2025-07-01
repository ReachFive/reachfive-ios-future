import Foundation
import BrightFutures
import Reach5

public extension ReachFiveFuture {

    func startPasswordless(_ request: PasswordLessRequest) -> Future<(), ReachFiveError> {
        bridge {
            await self.reachfive.startPasswordless(request)
        }
    }

    func verifyPasswordlessCode(verifyAuthCodeRequest: VerifyAuthCodeRequest) -> Future<AuthToken, ReachFiveError> {
        bridge {
            await self.reachfive.verifyPasswordlessCode(verifyAuthCodeRequest: verifyAuthCodeRequest)
        }
    }
}
