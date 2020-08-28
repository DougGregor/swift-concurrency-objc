
extension MKLocalSearch {
  typealias CompletionHandler = (MKLocalSearch.Response?, Error?) -> Void
}
@available(tvOS 9.2, *)
class MKLocalSearch : NSObject {
  init(request: MKLocalSearch.Request)
  @available(tvOS 14.0, *)
  init(request: MKLocalPointsOfInterestRequest)
  func start(completionHandler: @escaping MKLocalSearch.CompletionHandler)
  func cancel()
  var isSearching: Bool { get }
}
