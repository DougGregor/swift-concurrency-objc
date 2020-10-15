
@available(macOS 10.15, *)
struct ICAuthorizationStatus : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICAuthorizationStatus {
}
protocol ICDeviceBrowserDelegate : NSObjectProtocol {
  @available(macOS 10.4, *)
  @asyncHandler func deviceBrowser(_ browser: ICDeviceBrowser, didAdd device: ICDevice, moreComing: Bool)
  @available(macOS 10.4, *)
  @asyncHandler func deviceBrowser(_ browser: ICDeviceBrowser, didRemove device: ICDevice, moreGoing: Bool)
  @available(macOS 10.4, *)
  optional func deviceBrowser(_ browser: ICDeviceBrowser, deviceDidChangeName device: ICDevice)
  @available(macOS, introduced: 10.4, deprecated: 10.13, message: "deviceDidChangeSharingState will no longer be called")
  optional func deviceBrowser(_ browser: ICDeviceBrowser, deviceDidChangeSharingState device: ICDevice)
  @available(macOS 10.4, *)
  optional func deviceBrowser(_ browser: ICDeviceBrowser, requestsSelect device: ICDevice)
  @available(macOS 10.4, *)
  @asyncHandler optional func deviceBrowserDidEnumerateLocalDevices(_ browser: ICDeviceBrowser)
}
@available(macOS 10.4, *)
class ICDeviceBrowser : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged ICDeviceBrowserDelegate?
  var isBrowsing: Bool { get }
  @available(macOS 10.4, *)
  var browsedDeviceTypeMask: ICDeviceTypeMask
  @available(macOS 10.4, *)
  var devices: [ICDevice]? { get }
  @available(macOS 10.4, *)
  func preferredDevice() -> ICDevice?
  @available(macOS 10.4, *)
  func start()
  @available(macOS 10.4, *)
  func stop()
}
