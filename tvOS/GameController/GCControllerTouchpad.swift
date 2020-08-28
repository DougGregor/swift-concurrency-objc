
extension GCControllerTouchpad {
  enum TouchState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case up
    case down
    case moving
  }
}
@available(tvOS 14.0, *)
class GCControllerTouchpad : GCControllerElement {
  var button: GCControllerButtonInput { get }
  var touchDown: GCControllerTouchpadHandler?
  var touchMoved: GCControllerTouchpadHandler?
  var touchUp: GCControllerTouchpadHandler?
  var touchSurface: GCControllerDirectionPad { get }
  var touchState: GCControllerTouchpad.TouchState { get }
  var reportsAbsoluteTouchSurfaceValues: Bool
  func setValueForXAxis(_ xAxis: Float, yAxis: Float, touchDown: Bool, buttonValue: Float)
}
typealias GCControllerTouchpadHandler = (GCControllerTouchpad, Float, Float, Float, Bool) -> Void
