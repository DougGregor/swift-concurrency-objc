
@available(iOS 13.4, *)
class UIPointerInteraction : NSObject, UIInteraction {
  weak var delegate: @sil_weak UIPointerInteractionDelegate? { get }
  var isEnabled: Bool
  init(delegate: UIPointerInteractionDelegate?)
  func invalidate()
}
@available(iOS 13.4, *)
protocol UIPointerInteractionDelegate : NSObjectProtocol {
  optional func pointerInteraction(_ interaction: UIPointerInteraction, regionFor request: UIPointerRegionRequest, defaultRegion: UIPointerRegion) -> UIPointerRegion?
  optional func pointerInteraction(_ interaction: UIPointerInteraction, styleFor region: UIPointerRegion) -> UIPointerStyle?
  optional func pointerInteraction(_ interaction: UIPointerInteraction, willEnter region: UIPointerRegion, animator: UIPointerInteractionAnimating)
  optional func pointerInteraction(_ interaction: UIPointerInteraction, willExit region: UIPointerRegion, animator: UIPointerInteractionAnimating)
}
@available(iOS 13.4, *)
class UIPointerRegionRequest : NSObject {
  var location: CGPoint { get }
  var modifiers: UIKeyModifierFlags { get }
}
@available(iOS 13.4, *)
protocol UIPointerInteractionAnimating : NSObjectProtocol {
  func addAnimations(_ animations: @escaping () -> Void)
  func addCompletion(_ completion: @escaping (Bool) -> Void)
}
