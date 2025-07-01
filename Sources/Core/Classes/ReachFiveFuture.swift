import Foundation
import Reach5

/// ReachFive identity SDK with Future from BrightFuture as its async model
public class ReachFiveFuture: NSObject {
    public let reachfive: ReachFive

    public init(sdkConfig: SdkConfig, providersCreators: Array<ProviderCreator> = [], storage: Storage? = nil) {
        self.reachfive = ReachFive(sdkConfig: sdkConfig, providersCreators: providersCreators, storage: storage)
    }

    public override var description: String {
        reachfive.description
    }

    public func interceptUrl(_ url: URL) -> () {
        Task {
            await reachfive.interceptUrl(url)
        }
    }
}
