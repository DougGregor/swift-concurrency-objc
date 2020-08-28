
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMUIEvent : DOMEvent {
  var view: DOMAbstractView! { get }
  var detail: Int32 { get }
  @available(macOS 10.5, *)
  var keyCode: Int32 { get }
  @available(macOS 10.5, *)
  var charCode: Int32 { get }
  @available(macOS 10.5, *)
  var pageX: Int32 { get }
  @available(macOS 10.5, *)
  var pageY: Int32 { get }
  @available(macOS 10.5, *)
  var which: Int32 { get }
  @available(macOS 10.5, *)
  func initUIEvent(_ type: String!, canBubble: Bool, cancelable: Bool, view: DOMAbstractView!, detail: Int32)
}
extension DOMUIEvent {
}
