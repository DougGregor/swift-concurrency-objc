
typealias UITextAttributesConversionHandler = ([NSAttributedString.Key : Any]) -> [NSAttributedString.Key : Any]
@available(tvOS 13.0, *)
enum UIEditingInteractionConfiguration : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case `default`
}
protocol UIResponderStandardEditActions : NSObjectProtocol {
  @available(tvOS 3.0, *)
  optional func cut(_ sender: Any?)
  @available(tvOS 3.0, *)
  optional func copy(_ sender: Any?)
  @available(tvOS 3.0, *)
  optional func paste(_ sender: Any?)
  @available(tvOS 3.0, *)
  optional func select(_ sender: Any?)
  @available(tvOS 3.0, *)
  optional func selectAll(_ sender: Any?)
  @available(tvOS 3.2, *)
  optional func delete(_ sender: Any?)
  @available(tvOS 5.0, *)
  optional func makeTextWritingDirectionLeftToRight(_ sender: Any?)
  @available(tvOS 5.0, *)
  optional func makeTextWritingDirectionRightToLeft(_ sender: Any?)
  @available(tvOS 6.0, *)
  optional func toggleBoldface(_ sender: Any?)
  @available(tvOS 6.0, *)
  optional func toggleItalics(_ sender: Any?)
  @available(tvOS 6.0, *)
  optional func toggleUnderline(_ sender: Any?)
  @available(tvOS 7.0, *)
  optional func increaseSize(_ sender: Any?)
  @available(tvOS 7.0, *)
  optional func decreaseSize(_ sender: Any?)
  @available(tvOS 13.0, *)
  optional func updateTextAttributes(conversionHandler: ([NSAttributedString.Key : Any]) -> [NSAttributedString.Key : Any])
}
@available(tvOS 2.0, *)
class UIResponder : NSObject, UIResponderStandardEditActions {
  var next: UIResponder? { get }
  var canBecomeFirstResponder: Bool { get }
  func becomeFirstResponder() -> Bool
  var canResignFirstResponder: Bool { get }
  func resignFirstResponder() -> Bool
  var isFirstResponder: Bool { get }
  func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
  func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
  func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
  func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?)
  @available(tvOS 9.1, *)
  func touchesEstimatedPropertiesUpdated(_ touches: Set<UITouch>)
  @available(tvOS 9.0, *)
  func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?)
  @available(tvOS 9.0, *)
  func pressesChanged(_ presses: Set<UIPress>, with event: UIPressesEvent?)
  @available(tvOS 9.0, *)
  func pressesEnded(_ presses: Set<UIPress>, with event: UIPressesEvent?)
  @available(tvOS 9.0, *)
  func pressesCancelled(_ presses: Set<UIPress>, with event: UIPressesEvent?)
  @available(tvOS 3.0, *)
  func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
  @available(tvOS 3.0, *)
  func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
  @available(tvOS 3.0, *)
  func motionCancelled(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
  @available(tvOS 4.0, *)
  func remoteControlReceived(with event: UIEvent?)
  @available(tvOS 3.0, *)
  func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool
  @available(tvOS 7.0, *)
  func target(forAction action: Selector, withSender sender: Any?) -> Any?
  @available(tvOS 13.0, *)
  func buildMenu(with builder: UIMenuBuilder)
  @available(tvOS 13.0, *)
  func validate(_ command: UICommand)
  @available(tvOS 3.0, *)
  var undoManager: UndoManager? { get }
  @available(tvOS 13.0, *)
  var editingInteractionConfiguration: UIEditingInteractionConfiguration { get }
}
extension UIResponder {
  @available(tvOS 7.0, *)
  var keyCommands: [UIKeyCommand]? { get }
}
extension UIResponder {
  @available(tvOS 3.2, *)
  var inputView: UIView? { get }
  @available(tvOS 3.2, *)
  var inputAccessoryView: UIView? { get }
  @available(tvOS 8.0, *)
  var inputViewController: UIInputViewController? { get }
  @available(tvOS 8.0, *)
  var inputAccessoryViewController: UIInputViewController? { get }
  @available(tvOS 7.0, *)
  var textInputMode: UITextInputMode? { get }
  @available(tvOS 7.0, *)
  var textInputContextIdentifier: String? { get }
  @available(tvOS 7.0, *)
  class func clearTextInputContextIdentifier(_ identifier: String)
  @available(tvOS 3.2, *)
  func reloadInputViews()
}
extension UIKeyCommand {
  @available(tvOS 7.0, *)
  class let inputUpArrow: String
  @available(tvOS 7.0, *)
  class let inputDownArrow: String
  @available(tvOS 7.0, *)
  class let inputLeftArrow: String
  @available(tvOS 7.0, *)
  class let inputRightArrow: String
  @available(tvOS 7.0, *)
  class let inputEscape: String
  @available(tvOS 8.0, *)
  class let inputPageUp: String
  @available(tvOS 8.0, *)
  class let inputPageDown: String
  @available(tvOS 13.4, *)
  class let inputHome: String
  @available(tvOS 13.4, *)
  class let inputEnd: String
  @available(tvOS 13.4, *)
  class let f1: String
  @available(tvOS 13.4, *)
  class let f2: String
  @available(tvOS 13.4, *)
  class let f3: String
  @available(tvOS 13.4, *)
  class let f4: String
  @available(tvOS 13.4, *)
  class let f5: String
  @available(tvOS 13.4, *)
  class let f6: String
  @available(tvOS 13.4, *)
  class let f7: String
  @available(tvOS 13.4, *)
  class let f8: String
  @available(tvOS 13.4, *)
  class let f9: String
  @available(tvOS 13.4, *)
  class let f10: String
  @available(tvOS 13.4, *)
  class let f11: String
  @available(tvOS 13.4, *)
  class let f12: String
}
extension UIResponder : UIUserActivityRestoring {
  @available(tvOS 8.0, *)
  var userActivity: NSUserActivity?
  @available(tvOS 8.0, *)
  func updateUserActivityState(_ activity: NSUserActivity)
}
