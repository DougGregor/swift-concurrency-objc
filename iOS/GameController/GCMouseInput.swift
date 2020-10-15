
@available(iOS 14.0, *)
class GCMouseInput : GCPhysicalInputProfile {
  var mouseMovedHandler: GCMouseMoved?
  var scroll: GCDeviceCursor { get }
  var leftButton: GCControllerButtonInput { get }
  var rightButton: GCControllerButtonInput? { get }
  var middleButton: GCControllerButtonInput? { get }
  var auxiliaryButtons: [GCControllerButtonInput]? { get }
}
typealias GCMouseMoved = (GCMouseInput, Float, Float) -> Void
