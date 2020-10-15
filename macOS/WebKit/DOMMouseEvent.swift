
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMMouseEvent : DOMUIEvent {
  var screenX: Int32 { get }
  var screenY: Int32 { get }
  var clientX: Int32 { get }
  var clientY: Int32 { get }
  var ctrlKey: Bool { get }
  var shiftKey: Bool { get }
  var altKey: Bool { get }
  var metaKey: Bool { get }
  var button: Int16 { get }
  var relatedTarget: DOMEventTarget! { get }
  @available(macOS 10.5, *)
  var offsetX: Int32 { get }
  @available(macOS 10.5, *)
  var offsetY: Int32 { get }
  @available(macOS 10.5, *)
  var x: Int32 { get }
  @available(macOS 10.5, *)
  var y: Int32 { get }
  @available(macOS 10.5, *)
  var fromElement: DOMNode! { get }
  @available(macOS 10.5, *)
  var toElement: DOMNode! { get }
  @available(macOS 10.5, *)
  func initMouseEvent(_ type: String!, canBubble: Bool, cancelable: Bool, view: DOMAbstractView!, detail: Int32, screenX: Int32, screenY: Int32, clientX: Int32, clientY: Int32, ctrlKey: Bool, altKey: Bool, shiftKey: Bool, metaKey: Bool, button: UInt16, relatedTarget: DOMEventTarget!)
}
extension DOMMouseEvent {
}
