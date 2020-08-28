
@available(iOS 13.0, *)
struct ICAuthorizationStatus : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICAuthorizationStatus {
  @available(iOS 14.0, *)
  static let notDetermined: ICAuthorizationStatus
  @available(iOS 14.0, *)
  static let restricted: ICAuthorizationStatus
  @available(iOS 14.0, *)
  static let denied: ICAuthorizationStatus
  @available(iOS 14.0, *)
  static let authorized: ICAuthorizationStatus
}
protocol ICDeviceBrowserDelegate : NSObjectProtocol {
  @available(iOS 13.0, *)
  func deviceBrowser(_ browser: ICDeviceBrowser, didAdd device: ICDevice, moreComing: Bool)
  @available(iOS 13.0, *)
  func deviceBrowser(_ browser: ICDeviceBrowser, didRemove device: ICDevice, moreGoing: Bool)
  @available(iOS 13.0, *)
  optional func deviceBrowser(_ browser: ICDeviceBrowser, deviceDidChangeName device: ICDevice)
  @available(iOS 13.0, *)
  optional func deviceBrowser(_ browser: ICDeviceBrowser, deviceDidChangeSharingState device: ICDevice)
  @available(iOS 14.0, *)
  optional func deviceBrowserWillSuspendOperations(_ browser: ICDeviceBrowser)
  @available(iOS 14.0, *)
  optional func deviceBrowserDidSuspendOperations(_ browser: ICDeviceBrowser)
  @available(iOS 14.0, *)
  optional func deviceBrowserDidCancelSuspendOperations(_ browser: ICDeviceBrowser)
  @available(iOS 14.0, *)
  optional func deviceBrowserDidResumeOperations(_ browser: ICDeviceBrowser)
}
@available(iOS 13.0, *)
class ICDeviceBrowser : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged ICDeviceBrowserDelegate?
  var isBrowsing: Bool { get }
  @available(iOS 14.0, *)
  var isSuspended: Bool { get }
  @available(iOS 13.0, *)
  var devices: [ICDevice]? { get }
  @available(iOS 13.0, *)
  func start()
  @available(iOS 13.0, *)
  func stop()
  @available(iOS 14.0, *)
  func contentsAuthorizationStatus() -> ICAuthorizationStatus
  @available(iOS 14.0, *)
  func requestContentsAuthorization(completion: @escaping (ICAuthorizationStatus) -> Void)
  @available(iOS 14.0, *)
  func controlAuthorizationStatus() -> ICAuthorizationStatus
  @available(iOS 14.0, *)
  func requestControlAuthorization(completion: @escaping (ICAuthorizationStatus) -> Void)
}
