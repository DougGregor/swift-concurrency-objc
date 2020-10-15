
extension MKMapSnapshotter {
  typealias CompletionHandler = (MKMapSnapshotter.Snapshot?, Error?) -> Void
}
@available(macOS 10.9, *)
class MKMapSnapshotter : NSObject {
  init(options: MKMapSnapshotter.Options)
  func start(completionHandler: @escaping MKMapSnapshotter.CompletionHandler)
  func start(with queue: DispatchQueue, completionHandler: @escaping MKMapSnapshotter.CompletionHandler)
  func cancel()
  var isLoading: Bool { get }
}
