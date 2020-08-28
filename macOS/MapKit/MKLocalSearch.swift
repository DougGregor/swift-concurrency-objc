
extension MKLocalSearch {
  typealias CompletionHandler = (MKLocalSearch.Response?, Error?) -> Void
}
@available(macOS 10.9, *)
class MKLocalSearch : NSObject {
  init(request: MKLocalSearch.Request)
  @available(macOS 11.0, *)
  init(request: MKLocalPointsOfInterestRequest)
  func start(completionHandler: @escaping MKLocalSearch.CompletionHandler)
  func start() async throws -> MKLocalSearch.Response?
  func cancel()
  var isSearching: Bool { get }
}
