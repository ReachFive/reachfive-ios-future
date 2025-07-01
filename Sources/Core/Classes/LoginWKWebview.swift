import UIKit
@preconcurrency import WebKit
import Alamofire
import BrightFutures
import Reach5

public extension LoginWKWebview {
    func loadLoginWebview(reachfive: ReachFive, state: String? = nil, nonce: String? = nil, scope: [String]? = nil, origin: String? = nil) -> Future<AuthToken, ReachFiveError> {
        bridge {
            await self.loadLoginWebview(reachfive: reachfive, state: state, nonce: nonce, scope: scope, origin: origin)
        }
    }
}
