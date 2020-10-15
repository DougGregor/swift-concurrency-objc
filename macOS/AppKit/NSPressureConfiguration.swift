
@available(macOS 10.10.3, *)
class NSPressureConfiguration : NSObject {
  var pressureBehavior: NSEvent.PressureBehavior { get }
  init(pressureBehavior: NSEvent.PressureBehavior)
  func set()
}
extension NSView {
  @available(macOS 10.11, *)
  var pressureConfiguration: NSPressureConfiguration?
}
