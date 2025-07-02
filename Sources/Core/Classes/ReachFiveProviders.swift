import Foundation
import BrightFutures
import Reach5

public extension ReachFive {
    func reinitialize() -> Future<[Provider], ReachFiveError> {
        bridge {
            await self.reinitialize()
        }
    }

    func initialize() -> Future<[Provider], ReachFiveError> {
        bridge {
            await self.initialize()
        }
    }
}
