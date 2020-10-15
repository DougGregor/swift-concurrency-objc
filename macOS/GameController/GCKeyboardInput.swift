
@available(macOS 11.0, *)
class GCKeyboardInput : GCPhysicalInputProfile {
  var keyChangedHandler: GCKeyboardValueChangedHandler?
  var isAnyKeyPressed: Bool { get }
  func button(forKeyCode code: GCKeyCode) -> GCControllerButtonInput?
}
typealias GCKeyboardValueChangedHandler = (GCKeyboardInput, GCControllerButtonInput, GCKeyCode, Bool) -> Void
