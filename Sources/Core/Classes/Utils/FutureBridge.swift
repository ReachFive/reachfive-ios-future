import BrightFutures

public func bridge<T, E: Error>(resolver: @escaping () async -> Result<T, E>) -> Future<T, E> {
    let promise = Promise<T, E>()
    Task {
        let result = await resolver()
        promise.complete(result)
    }
    return promise.future
}
