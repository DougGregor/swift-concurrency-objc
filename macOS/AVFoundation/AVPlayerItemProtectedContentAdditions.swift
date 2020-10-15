
enum AVContentAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case completed
  case cancelled
  case timedOut
  case busy
  case notAvailable
  case notPossible
}
extension AVPlayerItem {
  @available(macOS 10.7, *)
  var isAuthorizationRequiredForPlayback: Bool { get }
  @available(macOS 10.7, *)
  var isApplicationAuthorizedForPlayback: Bool { get }
  @available(macOS 10.7, *)
  var isContentAuthorizedForPlayback: Bool { get }
  @available(macOS 10.7, *)
  func requestContentAuthorizationAsynchronously(withTimeoutInterval timeoutInterval: TimeInterval, completionHandler handler: @escaping () -> Void)
  @available(macOS 10.7, *)
  func cancelContentAuthorizationRequest()
  @available(macOS 10.7, *)
  var contentAuthorizationRequestStatus: AVContentAuthorizationStatus { get }
}
