
@available(tvOS 13.4, *)
class UIKey : NSObject, NSCopying, NSCoding {
  var characters: String { get }
  var charactersIgnoringModifiers: String { get }
  var modifierFlags: UIKeyModifierFlags { get }
  var keyCode: UIKeyboardHIDUsage { get }
}
