
extension UISwipeGestureRecognizer {
  struct Direction : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var right: UISwipeGestureRecognizer.Direction { get }
    static var left: UISwipeGestureRecognizer.Direction { get }
    static var up: UISwipeGestureRecognizer.Direction { get }
    static var down: UISwipeGestureRecognizer.Direction { get }
  }
}
@available(tvOS 3.2, *)
class UISwipeGestureRecognizer : UIGestureRecognizer {
  var direction: UISwipeGestureRecognizer.Direction
}
