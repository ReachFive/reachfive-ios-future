import BrightFutures
import Reach5

public extension ReachFive {
    func deleteSessionDevice(id: String, authToken: AuthToken) -> Future<Void, ReachFiveError> {
        bridge {
            try await self.deleteSessionDevice(id: id, authToken: authToken)
        }
    }
    
    func listSessionDevices(authToken: AuthToken) -> Future<[SessionDevice], ReachFiveError> {
        bridge {
            try await self.listSessionDevices(authToken: authToken)
        }
    }
}
