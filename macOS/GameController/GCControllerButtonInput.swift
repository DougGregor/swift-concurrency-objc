
@available(macOS 10.9, *)
class GCControllerButtonInput : GCControllerElement {
  var valueChangedHandler: GCControllerButtonValueChangedHandler?
  @available(macOS 10.10, *)
  var pressedChangedHandler: GCControllerButtonValueChangedHandler?
  @available(macOS 11.0, *)
  var touchedChangedHandler: GCControllerButtonTouchedChangedHandler?
  var value: Float { get }
  var isPressed: Bool { get }
  var isTouched: Bool { get }
  @available(macOS 10.15, *)
  func setValue(_ value: Float)
}
typealias GCControllerButtonValueChangedHandler = (GCControllerButtonInput, Float, Bool) -> Void
typealias GCControllerButtonTouchedChangedHandler = (GCControllerButtonInput, Float, Bool, Bool) -> Void
