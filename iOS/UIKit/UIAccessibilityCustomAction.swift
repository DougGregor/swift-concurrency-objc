
@available(iOS 8.0, *)
class UIAccessibilityCustomAction : NSObject {
  init(name: String, target: Any?, selector: Selector)
  @available(iOS 11.0, *)
  init(attributedName: NSAttributedString, target: Any?, selector: Selector)
  @available(iOS 14.0, *)
  init(name: String, image: UIImage?, target: Any?, selector: Selector)
  @available(iOS 14.0, *)
  init(attributedName: NSAttributedString, image: UIImage?, target: Any?, selector: Selector)
  @available(iOS 13.0, *)
  init(name: String, actionHandler: @escaping UIAccessibilityCustomAction.Handler)
  @available(iOS 13.0, *)
  init(attributedName: NSAttributedString, actionHandler: @escaping UIAccessibilityCustomAction.Handler)
  @available(iOS 14.0, *)
  init(name: String, image: UIImage?, actionHandler: @escaping UIAccessibilityCustomAction.Handler)
  @available(iOS 14.0, *)
  init(attributedName: NSAttributedString, image: UIImage?, actionHandler: @escaping UIAccessibilityCustomAction.Handler)
  var name: String
  var image: UIImage?
  @available(iOS 11.0, *)
  @NSCopying var attributedName: NSAttributedString
  weak var target: @sil_weak AnyObject?
  var selector: Selector
  @available(iOS 13.0, *)
  var actionHandler: UIAccessibilityCustomAction.Handler?
}
extension UIAccessibilityCustomAction {
  typealias Handler = (UIAccessibilityCustomAction) -> Bool
}
