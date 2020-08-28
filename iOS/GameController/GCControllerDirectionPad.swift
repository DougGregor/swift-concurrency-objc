
@available(iOS 7.0, *)
class GCControllerDirectionPad : GCControllerElement {
  var valueChangedHandler: GCControllerDirectionPadValueChangedHandler?
  var xAxis: GCControllerAxisInput { get }
  var yAxis: GCControllerAxisInput { get }
  var up: GCControllerButtonInput { get }
  var down: GCControllerButtonInput { get }
  var left: GCControllerButtonInput { get }
  var right: GCControllerButtonInput { get }
  @available(iOS 13.0, *)
  func setValueForXAxis(_ xAxis: Float, yAxis: Float)
}
typealias GCControllerDirectionPadValueChangedHandler = (GCControllerDirectionPad, Float, Float) -> Void
