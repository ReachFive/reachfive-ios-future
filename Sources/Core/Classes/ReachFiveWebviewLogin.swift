import Foundation
import BrightFutures
import AuthenticationServices
import Reach5

public extension ReachFive {

    func webviewLogin(_ request: WebviewLoginRequest) -> Future<AuthToken, ReachFiveError> {
        bridge {
            try await self.webviewLogin(request)
        }
    }
}
