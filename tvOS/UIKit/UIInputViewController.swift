
protocol UITextDocumentProxy : UIKeyInput {
  var documentContextBeforeInput: String? { get }
  var documentContextAfterInput: String? { get }
  @available(tvOS 11.0, *)
  var selectedText: String? { get }
  @available(tvOS 10.0, *)
  var documentInputMode: UITextInputMode? { get }
  @available(tvOS 11.0, *)
  var documentIdentifier: UUID { get }
  func adjustTextPosition(byCharacterOffset offset: Int)
  @available(tvOS 13.0, *)
  func setMarkedText(_ markedText: String, selectedRange: NSRange)
  @available(tvOS 13.0, *)
  func unmarkText()
}
@available(tvOS 8.0, *)
class UIInputViewController : UIViewController, UITextInputDelegate {
  var textDocumentProxy: UITextDocumentProxy { get }
  var primaryLanguage: String?
  var hasDictationKey: Bool
  @available(tvOS 11.0, *)
  var hasFullAccess: Bool { get }
  @available(tvOS 11.0, *)
  var needsInputModeSwitchKey: Bool { get }
  func dismissKeyboard()
  func advanceToNextInputMode()
  @available(tvOS 10.0, *)
  func handleInputModeList(from view: UIView, with event: UIEvent)
  func requestSupplementaryLexicon(completion completionHandler: @escaping (UILexicon) -> Void)
}
