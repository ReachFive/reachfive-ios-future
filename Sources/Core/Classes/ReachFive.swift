import Foundation
import Reach5

public extension ReachFive {
    func interceptUrl(_ url: URL) -> () {
        Task {
            try await self.interceptUrl(url)
        }
    }
}
