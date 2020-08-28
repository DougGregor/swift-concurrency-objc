
@available(iOS 7.0, *)
struct UIKeyModifierFlags : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  static var alphaShift: UIKeyModifierFlags { get }
  static var shift: UIKeyModifierFlags { get }
  static var control: UIKeyModifierFlags { get }
  static var alternate: UIKeyModifierFlags { get }
  static var command: UIKeyModifierFlags { get }
  static var numericPad: UIKeyModifierFlags { get }
}
@available(iOS 13.0, *)
class UICommandAlternate : NSObject, NSCopying, NSSecureCoding {
  var title: String { get }
  var action: Selector { get }
  var modifierFlags: UIKeyModifierFlags { get }
  convenience init(title: String, action: Selector, modifierFlags: UIKeyModifierFlags)
}
@available(iOS 13.0, *)
class UICommand : UIMenuElement {
  var discoverabilityTitle: String?
  var action: Selector { get }
  var propertyList: Any? { get }
  var attributes: UIMenuElement.Attributes
  var state: UIMenuElement.State
  var alternates: [UICommandAlternate] { get }
}

@available(iOS 13.0, *)
extension UICommand {
  convenience init(title: String = "", image: UIImage? = nil, action: Selector, propertyList: Any? = nil, alternates: [UICommandAlternate] = [], discoverabilityTitle: String? = nil, attributes: UIMenuElement.Attributes = [], state: UIMenuElement.State = .off)
}
@available(iOS 13.0, *)
let UICommandTagShare: String
