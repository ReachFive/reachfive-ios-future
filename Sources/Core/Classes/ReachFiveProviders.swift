import Foundation
import BrightFutures
import Reach5

public extension ReachFiveFuture {
    func getProvider(name: String) -> Provider? {
        self.reachfive.getProvider(name: name)
    }

    func getProviders() -> [Provider] {
        reachfive.getProviders()
    }

    func reinitialize() -> Future<[Provider], ReachFiveError> {
        bridge {
            await self.reachfive.reinitialize()
        }
    }

    func initialize() -> Future<[Provider], ReachFiveError> {
        bridge {
            await self.reachfive.initialize()
        }
    }
}
