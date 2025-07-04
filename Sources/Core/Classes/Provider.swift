import Foundation
import UIKit
import BrightFutures
import Reach5

public extension Provider {
    func login(scope: [String]?, origin: String, viewController: UIViewController?) -> Future<AuthToken, ReachFiveError> {
        bridge {
            await self.login(scope: scope, origin: origin, viewController: viewController)
        }
    }
    
    func logout() -> Future<(), ReachFiveError> {
        bridge {
            await self.logout()
        }
    }
}
