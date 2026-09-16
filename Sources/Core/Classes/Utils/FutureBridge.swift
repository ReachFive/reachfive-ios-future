import BrightFutures
import Reach5

public func bridge<T>(resolver: @escaping () async throws -> T) -> Future<T, ReachFiveError> {
    let promise = Promise<T, ReachFiveError>()
    Task {
        do {
            let result = try await resolver()
            promise.success(result)
        } catch let error as ReachFiveError {
            promise.failure(error)
        } catch {
            // The SDK only reports `ReachFiveError`, so this is unreachable in principle. It used to be a
            // forced cast, which turned any slip — a `URLError` escaping from `URLSession`, for one — into
            // a crash inside the integrating app. Reporting the failure is always better than that.
            promise.failure(.TechnicalError(reason: error.localizedDescription))
        }
    }
    return promise.future
}
