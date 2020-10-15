
@available(iOS 9.0, *)
class WCSessionFile : NSObject {
  var fileURL: URL { get }
  var metadata: [String : Any]? { get }
}
@available(iOS 9.0, *)
class WCSessionFileTransfer : NSObject {
  var file: WCSessionFile { get }
  @available(iOS 12.0, *)
  var progress: Progress { get }
  var isTransferring: Bool { get }
  func cancel()
}
