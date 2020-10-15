
@available(tvOS 14.0, *)
class GCDualShockGamepad : GCExtendedGamepad {
  var touchpadButton: GCControllerButtonInput! { get }
  var touchpadPrimary: GCControllerDirectionPad! { get }
  var touchpadSecondary: GCControllerDirectionPad! { get }
}
