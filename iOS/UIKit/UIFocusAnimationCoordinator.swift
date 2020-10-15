
@available(iOS 11.0, *)
protocol UIFocusAnimationContext : NSObjectProtocol {
  var duration: TimeInterval { get }
}
@available(iOS 9.0, *)
class UIFocusAnimationCoordinator : NSObject {
  func addCoordinatedAnimations(_ animations: (() -> Void)?, completion: (() -> Void)? = nil)
  @available(iOS 11.0, *)
  func addCoordinatedFocusingAnimations(_ animations: ((UIFocusAnimationContext) -> Void)?, completion: (() -> Void)? = nil)
  @available(iOS 11.0, *)
  func addCoordinatedUnfocusingAnimations(_ animations: ((UIFocusAnimationContext) -> Void)?, completion: (() -> Void)? = nil)
}
