
extension MKLocalSearch {
  typealias CompletionHandler = (MKLocalSearch.Response?, Error?) -> Void
}
@available(iOS 6.1, *)
class MKLocalSearch : NSObject {
  init(request: MKLocalSearch.Request)
  @available(iOS 14.0, *)
  init(request: MKLocalPointsOfInterestRequest)
  func start(completionHandler: @escaping MKLocalSearch.CompletionHandler)
  func start() async throws -> MKLocalSearch.Response?
  func cancel()
  var isSearching: Bool { get }
}
