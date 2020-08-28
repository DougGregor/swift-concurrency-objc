
@available(iOS 7.0, *)
class UIKeyCommand : UICommand {
  var input: String? { get }
  var modifierFlags: UIKeyModifierFlags { get }
  convenience init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector)
  @available(iOS, introduced: 9.0, deprecated: 13.0)
  convenience init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector, discoverabilityTitle: String)
}

@available(iOS 13.0, *)
extension UIKeyCommand {
  convenience init(title: String = "", image: UIImage? = nil, action: Selector, input: String, modifierFlags: UIKeyModifierFlags = [], propertyList: Any? = nil, alternates: [UICommandAlternate] = [], discoverabilityTitle: String? = nil, attributes: UIMenuElement.Attributes = [], state: UIMenuElement.State = .off)
}
