
@available(tvOS 7.0, *)
class GCControllerButtonInput : GCControllerElement {
  var valueChangedHandler: GCControllerButtonValueChangedHandler?
  @available(tvOS 8.0, *)
  var pressedChangedHandler: GCControllerButtonValueChangedHandler?
  @available(tvOS 14.0, *)
  var touchedChangedHandler: GCControllerButtonTouchedChangedHandler?
  var value: Float { get }
  var isPressed: Bool { get }
  var isTouched: Bool { get }
  @available(tvOS 13.0, *)
  func setValue(_ value: Float)
}
typealias GCControllerButtonValueChangedHandler = (GCControllerButtonInput, Float, Bool) -> Void
typealias GCControllerButtonTouchedChangedHandler = (GCControllerButtonInput, Float, Bool, Bool) -> Void
