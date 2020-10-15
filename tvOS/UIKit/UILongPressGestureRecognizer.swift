
@available(tvOS 3.2, *)
class UILongPressGestureRecognizer : UIGestureRecognizer {
  var numberOfTapsRequired: Int
  var minimumPressDuration: TimeInterval
  var allowableMovement: CGFloat
}
