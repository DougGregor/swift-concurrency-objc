
@available(tvOS 6.0, *)
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
@available(tvOS 6.0, *)
var SKDownloadTimeRemainingUnknown: TimeInterval
@available(tvOS 6.0, *)
class SKDownload : NSObject {
  @available(tvOS 12.0, *)
  var state: SKDownloadState { get }
  @available(tvOS, introduced: 6.0, deprecated: 12.0)
  var downloadState: SKDownloadState { get }
  @available(tvOS, introduced: 9.0, deprecated: 13.0)
  var contentLength: Int64 { get }
  @available(tvOS 13.0, *)
  var expectedContentLength: Int64 { get }
  @available(tvOS 6.0, *)
  var contentIdentifier: String { get }
  @available(tvOS 6.0, *)
  var contentURL: URL? { get }
  @available(tvOS 6.0, *)
  var contentVersion: String { get }
  @available(tvOS 6.0, *)
  var error: Error? { get }
  @available(tvOS 6.0, *)
  var progress: Float { get }
  @available(tvOS 6.0, *)
  var timeRemaining: TimeInterval { get }
  @available(tvOS 6.0, *)
  var transaction: SKPaymentTransaction { get }
}
