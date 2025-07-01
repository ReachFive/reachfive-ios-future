import Foundation
import BrightFutures
import AuthenticationServices
import Reach5

public extension ReachFiveFuture {

    func webviewLogin(_ request: WebviewLoginRequest) -> Future<AuthToken, ReachFiveError> {
        bridge {
            await self.reachfive.webviewLogin(request)
        }
    }
}
