
@available(watchOS 3.0, *)
enum WKGestureRecognizerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case possible
  case began
  case changed
  case ended
  case cancelled
  case failed
  case recognized
}
@available(watchOS 3.0, *)
struct WKSwipeGestureRecognizerDirection : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var right: WKSwipeGestureRecognizerDirection { get }
  static var left: WKSwipeGestureRecognizerDirection { get }
  static var up: WKSwipeGestureRecognizerDirection { get }
  static var down: WKSwipeGestureRecognizerDirection { get }
}
@available(watchOS 3.0, *)
class WKGestureRecognizer : NSObject {
  var state: WKGestureRecognizerState { get }
  var isEnabled: Bool
  func locationInObject() -> CGPoint
  func objectBounds() -> CGRect
}
@available(watchOS 3.0, *)
class WKTapGestureRecognizer : WKGestureRecognizer {
  var numberOfTapsRequired: Int
}
@available(watchOS 3.0, *)
class WKLongPressGestureRecognizer : WKGestureRecognizer {
  var minimumPressDuration: CFTimeInterval
  var numberOfTapsRequired: Int
  var allowableMovement: CGFloat
}
@available(watchOS 3.0, *)
class WKSwipeGestureRecognizer : WKGestureRecognizer {
  var direction: WKSwipeGestureRecognizerDirection
}
@available(watchOS 3.0, *)
class WKPanGestureRecognizer : WKGestureRecognizer {
  func translationInObject() -> CGPoint
  func velocityInObject() -> CGPoint
}
