
class NSTextField : NSControl, NSUserInterfaceValidations, NSAccessibilityNavigableStaticText, NSTextContent {
  @available(macOS 10.10, *)
  var placeholderString: String?
  @available(macOS 10.10, *)
  @NSCopying var placeholderAttributedString: NSAttributedString?
  @NSCopying var backgroundColor: NSColor?
  var drawsBackground: Bool
  @NSCopying var textColor: NSColor?
  var isBordered: Bool
  var isBezeled: Bool
  var isEditable: Bool
  var isSelectable: Bool
  func selectText(_ sender: Any?)
  weak var delegate: @sil_weak NSTextFieldDelegate?
  func textShouldBeginEditing(_ textObject: NSText) -> Bool
  func textShouldEndEditing(_ textObject: NSText) -> Bool
  func textDidBeginEditing(_ notification: Notification)
  func textDidEndEditing(_ notification: Notification)
  func textDidChange(_ notification: Notification)
  var bezelStyle: NSTextField.BezelStyle
  @available(macOS 10.8, *)
  var preferredMaxLayoutWidth: CGFloat
  @available(macOS 10.11, *)
  var maximumNumberOfLines: Int
  @available(macOS 10.11, *)
  var allowsDefaultTighteningForTruncation: Bool
  @available(macOS 10.15, *)
  var lineBreakStrategy: NSParagraphStyle.LineBreakStrategy
}
extension NSTextField {
  @available(macOS 10.12.2, *)
  var isAutomaticTextCompletionEnabled: Bool
  @available(macOS 10.12.2, *)
  var allowsCharacterPickerTouchBarItem: Bool
}
extension NSTextField {
  @available(macOS 10.12, *)
  convenience init(labelWithString stringValue: String)
  @available(macOS 10.12, *)
  convenience init(wrappingLabelWithString stringValue: String)
  @available(macOS 10.12, *)
  convenience init(labelWithAttributedString attributedStringValue: NSAttributedString)
  @available(macOS 10.12, *)
  convenience init(string stringValue: String)
}
extension NSTextField {
  var allowsEditingTextAttributes: Bool
  var importsGraphics: Bool
}
protocol NSTextFieldDelegate : NSControlTextEditingDelegate {
  @available(macOS 10.12.2, *)
  optional func textField(_ textField: NSTextField, textView: NSTextView, candidatesForSelectedRange selectedRange: NSRange) -> [Any]?
  @available(macOS 10.12.2, *)
  optional func textField(_ textField: NSTextField, textView: NSTextView, candidates: [NSTextCheckingResult], forSelectedRange selectedRange: NSRange) -> [NSTextCheckingResult]
  @available(macOS 10.12.2, *)
  optional func textField(_ textField: NSTextField, textView: NSTextView, shouldSelectCandidateAt index: Int) -> Bool
}
extension NSTextField {
}
