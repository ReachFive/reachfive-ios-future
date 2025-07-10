import BrightFutures
import Reach5

public func bridge<T>(resolver: @escaping () async throws -> T) -> Future<T, ReachFiveError> {
    let promise = Promise<T, ReachFiveError>()
    Task {
        do {
            let result = try await resolver()
            promise.success(result)
        } catch {
            promise.failure(error as! ReachFiveError)
        }
    }
    return promise.future
}
