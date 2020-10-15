
enum NSTextInputTraitType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case no
  case yes
}
protocol NSTextInputTraits {
  optional var autocorrectionType: NSTextInputTraitType { get set }
  optional var spellCheckingType: NSTextInputTraitType { get set }
  optional var grammarCheckingType: NSTextInputTraitType { get set }
  optional var smartQuotesType: NSTextInputTraitType { get set }
  optional var smartDashesType: NSTextInputTraitType { get set }
  optional var smartInsertDeleteType: NSTextInputTraitType { get set }
  optional var textReplacementType: NSTextInputTraitType { get set }
  optional var dataDetectionType: NSTextInputTraitType { get set }
  optional var linkDetectionType: NSTextInputTraitType { get set }
  optional var textCompletionType: NSTextInputTraitType { get set }
}
protocol NSTextCheckingClient : NSTextInputClient, NSTextInputTraits {
  @available(macOS 10.0, *)
  func annotatedSubstring(forProposedRange range: NSRange, actualRange: NSRangePointer?) -> NSAttributedString?
  @available(macOS 10.0, *)
  func setAnnotations(_ annotations: [NSAttributedString.Key : String], range: NSRange)
  @available(macOS 10.0, *)
  func addAnnotations(_ annotations: [NSAttributedString.Key : String], range: NSRange)
  @available(macOS 10.0, *)
  func removeAnnotation(_ annotationName: NSAttributedString.Key, range: NSRange)
  @available(macOS 10.0, *)
  func replaceCharacters(in range: NSRange, withAnnotatedString annotatedString: NSAttributedString)
  func selectAndShow(_ range: NSRange)
  func view(for range: NSRange, firstRect: NSRectPointer?, actualRange: NSRangePointer?) -> NSView?
  @available(macOS 10.12.2, *)
  func candidateListTouchBarItem() -> NSCandidateListTouchBarItem<AnyObject>?
}
