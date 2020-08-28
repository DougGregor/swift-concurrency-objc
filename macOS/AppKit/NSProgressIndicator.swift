
extension NSProgressIndicator {
  enum Style : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case bar
    case spinning
  }
}
class NSProgressIndicator : NSView, NSAccessibilityProgressIndicator {
  var isIndeterminate: Bool
  var isBezeled: Bool
  var controlTint: NSControlTint
  var controlSize: NSControl.ControlSize
  var doubleValue: Double
  func increment(by delta: Double)
  var minValue: Double
  var maxValue: Double
  var usesThreadedAnimation: Bool
  func startAnimation(_ sender: Any?)
  func stopAnimation(_ sender: Any?)
  var style: NSProgressIndicator.Style
  func sizeToFit()
  var isDisplayedWhenStopped: Bool
}
extension NSProgressIndicator {
}
