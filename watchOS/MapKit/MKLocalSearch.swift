
extension MKLocalSearch {
  typealias CompletionHandler = (MKLocalSearch.Response?, Error?) -> Void
}
@available(watchOS 2.0, *)
class MKLocalSearch : NSObject {
  init(request: MKLocalSearch.Request)
  @available(watchOS 7.0, *)
  init(request: MKLocalPointsOfInterestRequest)
  func start(completionHandler: @escaping MKLocalSearch.CompletionHandler)
  func cancel()
  var isSearching: Bool { get }
}
