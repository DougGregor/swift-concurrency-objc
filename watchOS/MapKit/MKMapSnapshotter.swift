
extension MKMapSnapshotter {
  typealias CompletionHandler = (MKMapSnapshotter.Snapshot?, Error?) -> Void
}
@available(watchOS 2.0, *)
class MKMapSnapshotter : NSObject {
  func start(completionHandler: @escaping MKMapSnapshotter.CompletionHandler)
  func start(with queue: DispatchQueue, completionHandler: @escaping MKMapSnapshotter.CompletionHandler)
  func cancel()
  var isLoading: Bool { get }
}
