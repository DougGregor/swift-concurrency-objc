
extension NSNotification.Name {
  @available(macOS 11.0, *)
  static let GCKeyboardDidConnect: NSNotification.Name
  @available(macOS 11.0, *)
  static let GCKeyboardDidDisconnect: NSNotification.Name
}
@available(macOS 11.0, *)
class GCKeyboard : NSObject, GCDevice {
  @available(macOS 11.0, *)
  var keyboardInput: GCKeyboardInput? { get }
  @available(macOS 11.0, *)
  class var coalesced: GCKeyboard? { get }
}
