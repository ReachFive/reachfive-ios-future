import BrightFutures
import Reach5
import UIKit

public extension Provider {
    func login(scope: [String]?, origin: String, presenting presentation: Presentation) -> Future<AuthToken, ReachFiveError> {
        bridge {
            try await self.login(scope: scope, origin: origin, presenting: presentation)
        }
    }

    func logout() -> Future<(), ReachFiveError> {
        bridge {
            try await self.logout()
        }
    }
}
