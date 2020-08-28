
protocol NSAlignmentFeedbackToken : NSObjectProtocol {
}
@available(macOS 10.11, *)
class NSAlignmentFeedbackFilter : NSObject {
  class var inputEventMask: NSEvent.EventTypeMask { get }
  func update(with event: NSEvent)
  func update(withPanRecognizer panRecognizer: NSPanGestureRecognizer)
  func alignmentFeedbackTokenForMovement(in view: NSView?, previousPoint: NSPoint, alignedPoint: NSPoint, defaultPoint: NSPoint) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForHorizontalMovement(in view: NSView?, previousX: CGFloat, alignedX: CGFloat, defaultX: CGFloat) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForVerticalMovement(in view: NSView?, previousY: CGFloat, alignedY: CGFloat, defaultY: CGFloat) -> NSAlignmentFeedbackToken?
  func performFeedback(_ alignmentFeedbackTokens: [NSAlignmentFeedbackToken], performanceTime: NSHapticFeedbackManager.PerformanceTime)
}
