
@available(tvOS 7.0, *)
class UIKeyCommand : UICommand {
  var input: String? { get }
  var modifierFlags: UIKeyModifierFlags { get }
  convenience init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector)
  @available(tvOS, introduced: 9.0, deprecated: 13.0)
  convenience init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector, discoverabilityTitle: String)
}
