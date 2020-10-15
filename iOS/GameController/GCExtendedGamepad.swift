
@available(iOS 7.0, *)
class GCExtendedGamepad : GCPhysicalInputProfile {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCExtendedGamepadValueChangedHandler?
  @available(iOS, introduced: 7.0, deprecated: 13.0, message: "GCExtendedGamepadSnapshot has been deprecated, use [GCController capture] instead")
  func saveSnapshot() -> GCExtendedGamepadSnapshot
  var dpad: GCControllerDirectionPad { get }
  var buttonA: GCControllerButtonInput { get }
  var buttonB: GCControllerButtonInput { get }
  var buttonX: GCControllerButtonInput { get }
  var buttonY: GCControllerButtonInput { get }
  @available(iOS 13.0, *)
  var buttonMenu: GCControllerButtonInput { get }
  @available(iOS 13.0, *)
  var buttonOptions: GCControllerButtonInput? { get }
  @available(iOS 14.0, *)
  var buttonHome: GCControllerButtonInput? { get }
  var leftThumbstick: GCControllerDirectionPad { get }
  var rightThumbstick: GCControllerDirectionPad { get }
  var leftShoulder: GCControllerButtonInput { get }
  var rightShoulder: GCControllerButtonInput { get }
  var leftTrigger: GCControllerButtonInput { get }
  var rightTrigger: GCControllerButtonInput { get }
  @available(iOS 12.1, *)
  var leftThumbstickButton: GCControllerButtonInput? { get }
  @available(iOS 12.1, *)
  var rightThumbstickButton: GCControllerButtonInput? { get }
  @available(iOS 13.0, *)
  func setStateFrom(_ extendedGamepad: GCExtendedGamepad)
}
typealias GCExtendedGamepadValueChangedHandler = (GCExtendedGamepad, GCControllerElement) -> Void
