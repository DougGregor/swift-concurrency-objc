
extension UIGestureRecognizer {
  func ignore(_ touch: UITouch, for event: UIEvent)
  @available(tvOS 9.0, *)
  func ignore(_ button: UIPress, for event: UIPressesEvent)
  func reset()
  func canPrevent(_ preventedGestureRecognizer: UIGestureRecognizer) -> Bool
  func canBePrevented(by preventingGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  func shouldRequireFailure(of otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  func shouldBeRequiredToFail(by otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 13.4, *)
  func shouldReceive(_ event: UIEvent) -> Bool
  func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent)
  func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent)
  func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent)
  func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent)
  @available(tvOS 9.1, *)
  func touchesEstimatedPropertiesUpdated(_ touches: Set<UITouch>)
  @available(tvOS 9.0, *)
  func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent)
  @available(tvOS 9.0, *)
  func pressesChanged(_ presses: Set<UIPress>, with event: UIPressesEvent)
  @available(tvOS 9.0, *)
  func pressesEnded(_ presses: Set<UIPress>, with event: UIPressesEvent)
  @available(tvOS 9.0, *)
  func pressesCancelled(_ presses: Set<UIPress>, with event: UIPressesEvent)
}
