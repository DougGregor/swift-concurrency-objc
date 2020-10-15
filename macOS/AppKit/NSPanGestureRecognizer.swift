
@available(macOS 10.10, *)
class NSPanGestureRecognizer : NSGestureRecognizer, NSCoding {
  var buttonMask: Int
  func translation(in view: NSView?) -> NSPoint
  func setTranslation(_ translation: NSPoint, in view: NSView?)
  func velocity(in view: NSView?) -> NSPoint
  @available(macOS 10.12.2, *)
  var numberOfTouchesRequired: Int
}
