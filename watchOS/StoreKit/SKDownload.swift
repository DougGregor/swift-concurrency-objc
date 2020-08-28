
@available(watchOS 6.2, *)
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
@available(watchOS 6.2, *)
var SKDownloadTimeRemainingUnknown: TimeInterval
@available(watchOS 6.2, *)
class SKDownload : NSObject {
  @available(watchOS 6.2, *)
  var state: SKDownloadState { get }
  @available(watchOS 6.2, *)
  var expectedContentLength: Int64 { get }
  @available(watchOS 6.2, *)
  var contentIdentifier: String { get }
  @available(watchOS 6.2, *)
  var contentURL: URL? { get }
  @available(watchOS 6.2, *)
  var contentVersion: String { get }
  @available(watchOS 6.2, *)
  var error: Error? { get }
  @available(watchOS 6.2, *)
  var progress: Float { get }
  @available(watchOS 6.2, *)
  var timeRemaining: TimeInterval { get }
  @available(watchOS 6.2, *)
  var transaction: SKPaymentTransaction { get }
}
