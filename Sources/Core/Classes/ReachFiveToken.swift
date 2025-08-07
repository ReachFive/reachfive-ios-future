import BrightFutures
import Reach5

public extension ReachFive {
    
    func refreshAccessToken(authToken: AuthToken) -> Future<AuthToken, ReachFiveError> {
        bridge {
            try await self.refreshAccessToken(authToken: authToken)
        }
    }
    
    func revokeToken(authToken: AuthToken) -> Future<Void, ReachFiveError> {
        bridge {
            try await self.revokeToken(authToken: authToken)
        }
    }
}
