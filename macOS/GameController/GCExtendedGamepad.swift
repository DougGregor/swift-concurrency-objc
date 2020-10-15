
@available(macOS 10.9, *)
class GCExtendedGamepad : GCPhysicalInputProfile {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCExtendedGamepadValueChangedHandler?
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "GCExtendedGamepadSnapshot has been deprecated, use [GCController capture] instead")
  func saveSnapshot() -> GCExtendedGamepadSnapshot
  var dpad: GCControllerDirectionPad { get }
  var buttonA: GCControllerButtonInput { get }
  var buttonB: GCControllerButtonInput { get }
  var buttonX: GCControllerButtonInput { get }
  var buttonY: GCControllerButtonInput { get }
  @available(macOS 10.15, *)
  var buttonMenu: GCControllerButtonInput { get }
  @available(macOS 10.15, *)
  var buttonOptions: GCControllerButtonInput? { get }
  @available(macOS 11.0, *)
  var buttonHome: GCControllerButtonInput? { get }
  var leftThumbstick: GCControllerDirectionPad { get }
  var rightThumbstick: GCControllerDirectionPad { get }
  var leftShoulder: GCControllerButtonInput { get }
  var rightShoulder: GCControllerButtonInput { get }
  var leftTrigger: GCControllerButtonInput { get }
  var rightTrigger: GCControllerButtonInput { get }
  @available(macOS 10.14.1, *)
  var leftThumbstickButton: GCControllerButtonInput? { get }
  @available(macOS 10.14.1, *)
  var rightThumbstickButton: GCControllerButtonInput? { get }
  @available(macOS 10.15, *)
  func setStateFrom(_ extendedGamepad: GCExtendedGamepad)
}
typealias GCExtendedGamepadValueChangedHandler = (GCExtendedGamepad, GCControllerElement) -> Void
