
@available(macOS 10.8, *)
@frozen enum SKDownloadState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case waiting
  case active
  case paused
  case finished
  case failed
  case cancelled
}
@available(macOS 10.14, *)
var SKDownloadTimeRemainingUnknown: TimeInterval
@available(macOS 10.8, *)
class SKDownload : NSObject {
  @available(macOS 10.8, *)
  var state: SKDownloadState { get }
  @available(macOS, introduced: 10.8, deprecated: 10.15)
  @NSCopying var contentLength: NSNumber { get }
  @available(macOS 10.15, *)
  var expectedContentLength: Int64 { get }
  @available(macOS 10.8, *)
  var contentIdentifier: String { get }
  @available(macOS 10.8, *)
  var contentURL: URL? { get }
  @available(macOS 10.8, *)
  var contentVersion: String { get }
  @available(macOS 10.8, *)
  var error: Error? { get }
  @available(macOS 10.8, *)
  var progress: Float { get }
  @available(macOS 10.8, *)
  var timeRemaining: TimeInterval { get }
  @available(macOS 10.11, *)
  var transaction: SKPaymentTransaction { get }
  @available(macOS 10.8, *)
  class func contentURL(forProductID productID: String) -> URL?
  @available(macOS 10.8, *)
  class func deleteContent(forProductID productID: String)
}
