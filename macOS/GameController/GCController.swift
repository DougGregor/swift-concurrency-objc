
extension NSNotification.Name {
  @available(macOS 10.9, *)
  static let GCControllerDidConnect: NSNotification.Name
  @available(macOS 10.9, *)
  static let GCControllerDidDisconnect: NSNotification.Name
  @available(macOS 11.0, *)
  static let GCControllerDidBecomeCurrent: NSNotification.Name
  @available(macOS 11.0, *)
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
@available(macOS 10.9, *)
class GCController : NSObject, GCDevice {
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "controllerPausedHandler has been deprecated. Use the Menu button found on the controller's profile, if it exists.")
  var controllerPausedHandler: ((GCController) -> Void)?
  @available(macOS 11.0, *)
  class var current: GCController? { get }
  var isAttachedToDevice: Bool { get }
  @available(macOS 10.15, *)
  var isSnapshot: Bool { get }
  var playerIndex: GCControllerPlayerIndex
  @available(macOS 11.0, *)
  @NSCopying var battery: GCDeviceBattery? { get }
  @available(macOS, introduced: 10.9, deprecated: 10.12)
  var gamepad: GCGamepad? { get }
  var microGamepad: GCMicroGamepad? { get }
  var extendedGamepad: GCExtendedGamepad? { get }
  @available(macOS 10.10, *)
  var motion: GCMotion? { get }
  @available(macOS 11.0, *)
  var light: GCDeviceLight? { get }
  @available(macOS 11.0, *)
  var haptics: GCDeviceHaptics? { get }
  @available(macOS 10.15, *)
  func capture() -> GCController
  class func controllers() -> [GCController]
  class func startWirelessControllerDiscovery(completionHandler: (() -> Void)? = nil)
  class func stopWirelessControllerDiscovery()
  @available(macOS 10.15, *)
  class func withMicroGamepad() -> GCController
  @available(macOS 10.15, *)
  class func withExtendedGamepad() -> GCController
  @available(macOS 11.0, *)
  class func supportsHIDDevice(_ device: IOHIDDevice) -> Bool
}
