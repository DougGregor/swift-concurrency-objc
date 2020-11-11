
extension NSNotification.Name {
  @available(iOS 7.0, *)
  static let GCControllerDidConnect: NSNotification.Name
  @available(iOS 7.0, *)
  static let GCControllerDidDisconnect: NSNotification.Name
  @available(iOS 14.0, *)
  static let GCControllerDidBecomeCurrent: NSNotification.Name
  @available(iOS 14.0, *)
  static let GCControllerDidStopBeingCurrent: NSNotification.Name
}
enum GCControllerPlayerIndex : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case indexUnset
  case index1
  case index2
  case index3
  case index4
}
@available(iOS 7.0, *)
class GCController : NSObject, GCDevice {
  @available(iOS, introduced: 7.0, deprecated: 13.0, message: "controllerPausedHandler has been deprecated. Use the Menu button found on the controller's profile, if it exists.")
  var controllerPausedHandler: ((GCController) -> Void)?
  @available(iOS 14.0, *)
  class var current: GCController? { get }
  var isAttachedToDevice: Bool { get }
  @available(iOS 13.0, *)
  var isSnapshot: Bool { get }
  var playerIndex: GCControllerPlayerIndex
  @available(iOS 14.0, *)
  @NSCopying var battery: GCDeviceBattery? { get }
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  var gamepad: GCGamepad? { get }
  var microGamepad: GCMicroGamepad? { get }
  var extendedGamepad: GCExtendedGamepad? { get }
  @available(iOS 8.0, *)
  var motion: GCMotion? { get }
  @available(iOS 14.0, *)
  var light: GCDeviceLight? { get }
  @available(iOS 14.0, *)
  var haptics: GCDeviceHaptics? { get }
  @available(iOS 13.0, *)
  func capture() -> GCController
  class func controllers() -> [GCController]
  class func startWirelessControllerDiscovery(completionHandler: (() -> Void)? = nil)
  class func startWirelessControllerDiscoveryAsync() async
  class func stopWirelessControllerDiscovery()
  @available(iOS 13.0, *)
  class func withMicroGamepad() -> GCController
  @available(iOS 13.0, *)
  class func withExtendedGamepad() -> GCController
}
