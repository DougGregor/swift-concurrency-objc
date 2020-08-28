
@available(macOS, introduced: 10.9, deprecated: 10.12, renamed: "GCExtendedGamepad")
class GCGamepad : GCPhysicalInputProfile {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCGamepadValueChangedHandler?
  func saveSnapshot() -> GCGamepadSnapshot
  var dpad: GCControllerDirectionPad { get }
  var buttonA: GCControllerButtonInput { get }
  var buttonB: GCControllerButtonInput { get }
  var buttonX: GCControllerButtonInput { get }
  var buttonY: GCControllerButtonInput { get }
  var leftShoulder: GCControllerButtonInput { get }
  var rightShoulder: GCControllerButtonInput { get }
}
@available(macOS, introduced: 10.9, deprecated: 10.12, message: "GCGamepad has been deprecated")
typealias GCGamepadValueChangedHandler = (GCGamepad, GCControllerElement) -> Void
