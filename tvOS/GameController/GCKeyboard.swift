
extension NSNotification.Name {
  @available(tvOS 14.0, *)
  static let GCKeyboardDidConnect: NSNotification.Name
  @available(tvOS 14.0, *)
  static let GCKeyboardDidDisconnect: NSNotification.Name
}
@available(tvOS 14.0, *)
class GCKeyboard : NSObject, GCDevice {
  @available(tvOS 14.0, *)
  var keyboardInput: GCKeyboardInput? { get }
  @available(tvOS 14.0, *)
  class var coalesced: GCKeyboard? { get }
}
