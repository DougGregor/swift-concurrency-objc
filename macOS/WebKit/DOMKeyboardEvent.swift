
var DOM_KEY_LOCATION_STANDARD: Int { get }
var DOM_KEY_LOCATION_LEFT: Int { get }
var DOM_KEY_LOCATION_RIGHT: Int { get }
var DOM_KEY_LOCATION_NUMPAD: Int { get }
@available(macOS, introduced: 10.5, deprecated: 10.14)
class DOMKeyboardEvent : DOMUIEvent {
  var keyIdentifier: String! { get }
  @available(macOS 10.8, *)
  var location: UInt32 { get }
  var ctrlKey: Bool { get }
  var shiftKey: Bool { get }
  var altKey: Bool { get }
  var metaKey: Bool { get }
  @available(macOS 10.5, *)
  var altGraphKey: Bool { get }
  func getModifierState(_ keyIdentifierArg: String!) -> Bool
  @available(macOS 10.8, *)
  func initKeyboardEvent(_ type: String!, canBubble: Bool, cancelable: Bool, view: DOMAbstractView!, keyIdentifier: String!, location: UInt32, ctrlKey: Bool, altKey: Bool, shiftKey: Bool, metaKey: Bool, altGraphKey: Bool)
  @available(macOS 10.8, *)
  func initKeyboardEvent(_ type: String!, canBubble: Bool, cancelable: Bool, view: DOMAbstractView!, keyIdentifier: String!, location: UInt32, ctrlKey: Bool, altKey: Bool, shiftKey: Bool, metaKey: Bool)
}
