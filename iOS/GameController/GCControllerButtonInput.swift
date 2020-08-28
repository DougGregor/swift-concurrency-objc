
@available(iOS 7.0, *)
class GCControllerButtonInput : GCControllerElement {
  var valueChangedHandler: GCControllerButtonValueChangedHandler?
  @available(iOS 8.0, *)
  var pressedChangedHandler: GCControllerButtonValueChangedHandler?
  @available(iOS 14.0, *)
  var touchedChangedHandler: GCControllerButtonTouchedChangedHandler?
  var value: Float { get }
  var isPressed: Bool { get }
  var isTouched: Bool { get }
  @available(iOS 13.0, *)
  func setValue(_ value: Float)
}
typealias GCControllerButtonValueChangedHandler = (GCControllerButtonInput, Float, Bool) -> Void
typealias GCControllerButtonTouchedChangedHandler = (GCControllerButtonInput, Float, Bool, Bool) -> Void
