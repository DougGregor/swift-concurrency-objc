
@available(tvOS 11.0, *)
protocol UIFocusAnimationContext : NSObjectProtocol {
  var duration: TimeInterval { get }
}
@available(tvOS 9.0, *)
class UIFocusAnimationCoordinator : NSObject {
  func addCoordinatedAnimations(_ animations: (() -> Void)?, completion: (() -> Void)? = nil)
  func addCoordinatedAnimationsAsync(_ animations: (() -> Void)?) async
  @available(tvOS 11.0, *)
  func addCoordinatedFocusingAnimations(_ animations: ((UIFocusAnimationContext) -> Void)?, completion: (() -> Void)? = nil)
  @available(tvOS 11.0, *)
  func addCoordinatedFocusingAnimationsAsync(_ animations: ((UIFocusAnimationContext) -> Void)?) async
  @available(tvOS 11.0, *)
  func addCoordinatedUnfocusingAnimations(_ animations: ((UIFocusAnimationContext) -> Void)?, completion: (() -> Void)? = nil)
  @available(tvOS 11.0, *)
  func addCoordinatedUnfocusingAnimationsAsync(_ animations: ((UIFocusAnimationContext) -> Void)?) async
}
