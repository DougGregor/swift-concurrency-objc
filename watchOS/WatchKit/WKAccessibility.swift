
@available(watchOS 2.0, *)
func WKAccessibilityIsVoiceOverRunning() -> Bool
@available(watchOS 2.0, *)
let WKAccessibilityVoiceOverStatusChanged: String
@available(watchOS 4.0, *)
func WKAccessibilityIsReduceMotionEnabled() -> Bool
extension NSNotification.Name {
  @available(watchOS 4.0, *)
  static let WKAccessibilityReduceMotionStatusDidChange: NSNotification.Name
}
