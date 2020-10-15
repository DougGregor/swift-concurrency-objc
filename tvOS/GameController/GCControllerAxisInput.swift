
@available(tvOS 7.0, *)
class GCControllerAxisInput : GCControllerElement {
  var valueChangedHandler: GCControllerAxisValueChangedHandler?
  var value: Float { get }
  @available(tvOS 13.0, *)
  func setValue(_ value: Float)
}
typealias GCControllerAxisValueChangedHandler = (GCControllerAxisInput, Float) -> Void
