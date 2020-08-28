
extension NSNotification.Name {
  @available(iOS 14.0, *)
  static let GCKeyboardDidConnect: NSNotification.Name
  @available(iOS 14.0, *)
  static let GCKeyboardDidDisconnect: NSNotification.Name
}
@available(iOS 14.0, *)
class GCKeyboard : NSObject, GCDevice {
  @available(iOS 14.0, *)
  var keyboardInput: GCKeyboardInput? { get }
  @available(iOS 14.0, *)
  class var coalesced: GCKeyboard? { get }
}
