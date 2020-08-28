
@available(iOS 6.0, *)
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
@available(iOS 6.0, *)
var SKDownloadTimeRemainingUnknown: TimeInterval
@available(iOS 6.0, *)
class SKDownload : NSObject {
  @available(iOS 12.0, *)
  var state: SKDownloadState { get }
  @available(iOS, introduced: 6.0, deprecated: 12.0)
  var downloadState: SKDownloadState { get }
  @available(iOS, introduced: 6.0, deprecated: 13.0)
  var contentLength: Int64 { get }
  @available(iOS 13.0, *)
  var expectedContentLength: Int64 { get }
  @available(iOS 6.0, *)
  var contentIdentifier: String { get }
  @available(iOS 6.0, *)
  var contentURL: URL? { get }
  @available(iOS 6.0, *)
  var contentVersion: String { get }
  @available(iOS 6.0, *)
  var error: Error? { get }
  @available(iOS 6.0, *)
  var progress: Float { get }
  @available(iOS 6.0, *)
  var timeRemaining: TimeInterval { get }
  @available(iOS 6.0, *)
  var transaction: SKPaymentTransaction { get }
}
