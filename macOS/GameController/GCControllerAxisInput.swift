
@available(macOS 10.9, *)
class GCControllerAxisInput : GCControllerElement {
  var valueChangedHandler: GCControllerAxisValueChangedHandler?
  var value: Float { get }
  @available(macOS 10.15, *)
  func setValue(_ value: Float)
}
typealias GCControllerAxisValueChangedHandler = (GCControllerAxisInput, Float) -> Void
