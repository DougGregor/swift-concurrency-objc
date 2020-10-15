
@available(macOS 10.11, *)
class GCMicroGamepad : GCPhysicalInputProfile {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCMicroGamepadValueChangedHandler?
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "GCMicroGamepadSnapshot has been deprecated, use [GCController capture] instead")
  func saveSnapshot() -> GCMicroGamepadSnapshot
  var dpad: GCControllerDirectionPad { get }
  var buttonA: GCControllerButtonInput { get }
  var buttonX: GCControllerButtonInput { get }
  @available(macOS 10.15, *)
  var buttonMenu: GCControllerButtonInput { get }
  var reportsAbsoluteDpadValues: Bool
  var allowsRotation: Bool
  @available(macOS 10.15, *)
  func setStateFrom(_ microGamepad: GCMicroGamepad)
}
typealias GCMicroGamepadValueChangedHandler = (GCMicroGamepad, GCControllerElement) -> Void
