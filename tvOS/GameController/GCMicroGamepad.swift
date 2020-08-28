
@available(tvOS 9.0, *)
class GCMicroGamepad : GCPhysicalInputProfile {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCMicroGamepadValueChangedHandler?
  @available(tvOS, introduced: 7.0, deprecated: 13.0, message: "GCMicroGamepadSnapshot has been deprecated, use [GCController capture] instead")
  func saveSnapshot() -> GCMicroGamepadSnapshot
  var dpad: GCControllerDirectionPad { get }
  var buttonA: GCControllerButtonInput { get }
  var buttonX: GCControllerButtonInput { get }
  @available(tvOS 13.0, *)
  var buttonMenu: GCControllerButtonInput { get }
  var reportsAbsoluteDpadValues: Bool
  var allowsRotation: Bool
  @available(tvOS 13.0, *)
  func setStateFrom(_ microGamepad: GCMicroGamepad)
}
typealias GCMicroGamepadValueChangedHandler = (GCMicroGamepad, GCControllerElement) -> Void
