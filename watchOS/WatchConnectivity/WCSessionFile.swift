
@available(watchOS 2.0, *)
class WCSessionFile : NSObject {
  var fileURL: URL { get }
  var metadata: [String : Any]? { get }
}
@available(watchOS 2.0, *)
class WCSessionFileTransfer : NSObject {
  var file: WCSessionFile { get }
  @available(watchOS 5.0, *)
  var progress: Progress { get }
  var isTransferring: Bool { get }
  func cancel()
}
