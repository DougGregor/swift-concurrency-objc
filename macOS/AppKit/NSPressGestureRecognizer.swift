
@available(macOS 10.10, *)
class NSPressGestureRecognizer : NSGestureRecognizer, NSCoding {
  var buttonMask: Int
  var minimumPressDuration: TimeInterval
  var allowableMovement: CGFloat
  @available(macOS 10.12.2, *)
  var numberOfTouchesRequired: Int
}
