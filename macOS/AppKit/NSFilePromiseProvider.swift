
@available(macOS 10.12, *)
class NSFilePromiseProvider : NSObject, NSPasteboardWriting {
  var fileType: String
  weak var delegate: @sil_weak NSFilePromiseProviderDelegate?
  var userInfo: Any?
  convenience init(fileType: String, delegate: NSFilePromiseProviderDelegate)
}
protocol NSFilePromiseProviderDelegate : NSObjectProtocol {
  @available(macOS 10.12, *)
  func filePromiseProvider(_ filePromiseProvider: NSFilePromiseProvider, fileNameForType fileType: String) -> String
  @available(macOS 10.12, *)
  func filePromiseProvider(_ filePromiseProvider: NSFilePromiseProvider, writePromiseTo url: URL, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.12, *)
  optional func operationQueue(for filePromiseProvider: NSFilePromiseProvider) -> OperationQueue
}
