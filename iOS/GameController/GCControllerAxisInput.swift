
@available(iOS 7.0, *)
class GCControllerAxisInput : GCControllerElement {
  var valueChangedHandler: GCControllerAxisValueChangedHandler?
  var value: Float { get }
  @available(iOS 13.0, *)
  func setValue(_ value: Float)
}
typealias GCControllerAxisValueChangedHandler = (GCControllerAxisInput, Float) -> Void
