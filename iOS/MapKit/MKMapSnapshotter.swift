
extension MKMapSnapshotter {
  typealias CompletionHandler = (MKMapSnapshotter.Snapshot?, Error?) -> Void
}
@available(iOS 7.0, *)
class MKMapSnapshotter : NSObject {
  init(options: MKMapSnapshotter.Options)
  func start(completionHandler: @escaping MKMapSnapshotter.CompletionHandler)
  func start() async throws -> MKMapSnapshotter.Snapshot
  func start(with queue: DispatchQueue, completionHandler: @escaping MKMapSnapshotter.CompletionHandler)
  func start(with queue: DispatchQueue) async throws -> MKMapSnapshotter.Snapshot
  func cancel()
  var isLoading: Bool { get }
}
