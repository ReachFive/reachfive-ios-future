import Foundation
import Reach5

public extension ReachFive {
    func interceptUrl(_ url: URL) -> () {
        Task {
            await self.interceptUrl(url)
        }
    }
}
