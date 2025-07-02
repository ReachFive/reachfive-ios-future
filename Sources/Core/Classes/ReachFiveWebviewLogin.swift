import Foundation
import BrightFutures
import AuthenticationServices
import Reach5

public extension ReachFive {

    func webviewLogin(_ request: WebviewLoginRequest) -> Future<AuthToken, ReachFiveError> {
        bridge {
            await self.webviewLogin(request)
        }
    }
}
