
@available(iOS 9.0, *)
class UIPressesEvent : UIEvent {
  var allPresses: Set<UIPress> { get }
  func presses(for gesture: UIGestureRecognizer) -> Set<UIPress>
}
