
@available(iOS 3.0, *)
class UIAccessibilityElement : UIResponder, UIAccessibilityIdentification {
  init(accessibilityContainer container: Any)
  weak var accessibilityContainer: @sil_weak AnyObject?
  @available(iOS 10.0, *)
  var accessibilityFrameInContainerSpace: CGRect
}
