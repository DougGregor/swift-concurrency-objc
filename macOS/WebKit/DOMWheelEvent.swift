
var DOM_DOM_DELTA_PIXEL: Int { get }
var DOM_DOM_DELTA_LINE: Int { get }
var DOM_DOM_DELTA_PAGE: Int { get }
@available(macOS, introduced: 10.5, deprecated: 10.14)
class DOMWheelEvent : DOMMouseEvent {
  @available(macOS 10.5, *)
  var wheelDeltaX: Int32 { get }
  @available(macOS 10.5, *)
  var wheelDeltaY: Int32 { get }
  var wheelDelta: Int32 { get }
  var isHorizontal: Bool { get }
  @available(macOS 10.5, *)
  func initWheelEvent(_ wheelDeltaX: Int32, wheelDeltaY: Int32, view: DOMAbstractView!, screenX: Int32, screenY: Int32, clientX: Int32, clientY: Int32, ctrlKey: Bool, altKey: Bool, shiftKey: Bool, metaKey: Bool)
}
