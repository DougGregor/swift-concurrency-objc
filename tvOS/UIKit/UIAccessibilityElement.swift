
@available(tvOS 3.0, *)
class UIAccessibilityElement : UIResponder, UIAccessibilityIdentification {
  init(accessibilityContainer container: Any)
  weak var accessibilityContainer: @sil_weak AnyObject?
  @available(tvOS 10.0, *)
  var accessibilityFrameInContainerSpace: CGRect
}
