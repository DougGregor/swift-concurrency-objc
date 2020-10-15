
protocol UITextViewDelegate : UIScrollViewDelegate {
  @available(iOS 2.0, *)
  optional func textViewShouldBeginEditing(_ textView: UITextView) -> Bool
  @available(iOS 2.0, *)
  optional func textViewShouldEndEditing(_ textView: UITextView) -> Bool
  @available(iOS 2.0, *)
  @asyncHandler optional func textViewDidBeginEditing(_ textView: UITextView)
  @available(iOS 2.0, *)
  @asyncHandler optional func textViewDidEndEditing(_ textView: UITextView)
  @available(iOS 2.0, *)
  optional func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  @available(iOS 2.0, *)
  @asyncHandler optional func textViewDidChange(_ textView: UITextView)
  @available(iOS 2.0, *)
  @asyncHandler optional func textViewDidChangeSelection(_ textView: UITextView)
  @available(iOS 10.0, *)
  optional func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool
  @available(iOS 10.0, *)
  optional func textView(_ textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  optional func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange) -> Bool
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  optional func textView(_ textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange) -> Bool
}
@available(iOS 2.0, *)
class UITextView : UIScrollView, UITextInput, UIContentSizeCategoryAdjusting {
  var text: String!
  var font: UIFont?
  var textColor: UIColor?
  var textAlignment: NSTextAlignment
  var selectedRange: NSRange
  var isEditable: Bool
  @available(iOS 7.0, *)
  var isSelectable: Bool
  @available(iOS 3.0, *)
  var dataDetectorTypes: UIDataDetectorTypes
  @available(iOS 6.0, *)
  var allowsEditingTextAttributes: Bool
  @available(iOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString!
  @available(iOS 6.0, *)
  var typingAttributes: [NSAttributedString.Key : Any]
  func scrollRangeToVisible(_ range: NSRange)
  @available(iOS 6.0, *)
  var clearsOnInsertion: Bool
  @available(iOS 7.0, *)
  init(frame: CGRect, textContainer: NSTextContainer?)
  @available(iOS 7.0, *)
  var textContainer: NSTextContainer { get }
  @available(iOS 7.0, *)
  var textContainerInset: UIEdgeInsets
  @available(iOS 7.0, *)
  var layoutManager: NSLayoutManager { get }
  @available(iOS 7.0, *)
  var textStorage: NSTextStorage { get }
  @available(iOS 7.0, *)
  var linkTextAttributes: [NSAttributedString.Key : Any]!
  @available(iOS 13.0, *)
  var usesStandardTextScaling: Bool
}
extension UITextView : UITextDraggable, UITextDroppable, UITextPasteConfigurationSupporting {
}
extension UITextView {
  class let textDidBeginEditingNotification: NSNotification.Name
  class let textDidChangeNotification: NSNotification.Name
  class let textDidEndEditingNotification: NSNotification.Name
}
