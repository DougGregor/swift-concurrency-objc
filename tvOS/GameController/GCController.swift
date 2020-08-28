
extension NSNotification.Name {
  @available(tvOS 7.0, *)
  static let GCControllerDidConnect: NSNotification.Name
  @available(tvOS 7.0, *)
  static let GCControllerDidDisconnect: NSNotification.Name
  @available(tvOS 14.0, *)
  static let GCControllerDidBecomeCurrent: NSNotification.Name
  @available(tvOS 14.0, *)
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
@available(tvOS 7.0, *)
class GCController : NSObject, GCDevice {
  @available(tvOS, introduced: 9.0, deprecated: 13.0, message: "controllerPausedHandler has been deprecated. Use the Menu button found on the controller's profile, if it exists.")
  var controllerPausedHandler: ((GCController) -> Void)?
  @available(tvOS 14.0, *)
  class var current: GCController? { get }
  var isAttachedToDevice: Bool { get }
  @available(tvOS 13.0, *)
  var isSnapshot: Bool { get }
  var playerIndex: GCControllerPlayerIndex
  @available(tvOS 14.0, *)
  @NSCopying var battery: GCDeviceBattery? { get }
  @available(tvOS, introduced: 7.0, deprecated: 10.0)
  var gamepad: GCGamepad? { get }
  var microGamepad: GCMicroGamepad? { get }
  var extendedGamepad: GCExtendedGamepad? { get }
  @available(tvOS 8.0, *)
  var motion: GCMotion? { get }
  @available(tvOS 14.0, *)
  var light: GCDeviceLight? { get }
  @available(tvOS 14.0, *)
  var haptics: GCDeviceHaptics? { get }
  @available(tvOS 13.0, *)
  func capture() -> GCController
  class func controllers() -> [GCController]
  class func startWirelessControllerDiscovery(completionHandler: (() -> Void)? = nil)
  class func startWirelessControllerDiscovery() async
  class func stopWirelessControllerDiscovery()
  @available(tvOS 13.0, *)
  class func withMicroGamepad() -> GCController
  @available(tvOS 13.0, *)
  class func withExtendedGamepad() -> GCController
}
