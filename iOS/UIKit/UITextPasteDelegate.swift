
@available(iOS 11.0, *)
protocol UITextPasteDelegate : NSObjectProtocol {
  optional func textPasteConfigurationSupporting(_ textPasteConfigurationSupporting: UITextPasteConfigurationSupporting, transform item: UITextPasteItem)
  optional func textPasteConfigurationSupporting(_ textPasteConfigurationSupporting: UITextPasteConfigurationSupporting, combineItemAttributedStrings itemStrings: [NSAttributedString], for textRange: UITextRange) -> NSAttributedString
  optional func textPasteConfigurationSupporting(_ textPasteConfigurationSupporting: UITextPasteConfigurationSupporting, performPasteOf attributedString: NSAttributedString, to textRange: UITextRange) -> UITextRange
  optional func textPasteConfigurationSupporting(_ textPasteConfigurationSupporting: UITextPasteConfigurationSupporting, shouldAnimatePasteOf attributedString: NSAttributedString, to textRange: UITextRange) -> Bool
}
@available(iOS 11.0, *)
protocol UITextPasteItem : NSObjectProtocol {
  var itemProvider: NSItemProvider { get }
  var localObject: Any? { get }
  var defaultAttributes: [NSAttributedString.Key : Any] { get }
  func setResult(string: String)
  func setResult(attributedString string: NSAttributedString)
  func setResult(attachment textAttachment: NSTextAttachment)
  func setNoResult()
  func setDefaultResult()
}
