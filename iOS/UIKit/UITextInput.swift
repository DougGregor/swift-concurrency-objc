
protocol UIKeyInput : UITextInputTraits {
  var hasText: Bool { get }
  func insertText(_ text: String)
  func deleteBackward()
}
enum UITextStorageDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case forward
  case backward
}
enum UITextLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case right
  case left
  case up
  case down
}
struct UITextDirection : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: Int)
  let rawValue: Int
}

extension UITextDirection {
  static func storage(_ direction: UITextStorageDirection) -> UITextDirection
  static func layout(_ direction: UITextLayoutDirection) -> UITextDirection
}
enum UITextGranularity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case character
  case word
  case sentence
  case paragraph
  case line
  case document
}
@available(iOS 5.1, *)
class UIDictationPhrase : NSObject {
  var text: String { get }
  var alternativeInterpretations: [String]? { get }
}
@available(iOS 9.0, *)
class UITextInputAssistantItem : NSObject {
  var allowsHidingShortcuts: Bool
  var leadingBarButtonGroups: [UIBarButtonItemGroup]
  var trailingBarButtonGroups: [UIBarButtonItemGroup]
}
@available(iOS 13.0, *)
class UITextPlaceholder : NSObject {
  var rects: [UITextSelectionRect] { get }
}
enum UITextAlternativeStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case lowConfidence
}
protocol UITextInput : UIKeyInput {
  @available(iOS 3.2, *)
  func text(in range: UITextRange) -> String?
  @available(iOS 3.2, *)
  func replace(_ range: UITextRange, withText text: String)
  @available(iOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange? { get set }
  @available(iOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(iOS 3.2, *)
  var markedTextStyle: [NSAttributedString.Key : Any]? { get set }
  func setMarkedText(_ markedText: String?, selectedRange: NSRange)
  func unmarkText()
  @available(iOS 3.2, *)
  var beginningOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  var endOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  func textRange(from fromPosition: UITextPosition, to toPosition: UITextPosition) -> UITextRange?
  @available(iOS 3.2, *)
  func position(from position: UITextPosition, offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func position(from position: UITextPosition, in direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func compare(_ position: UITextPosition, to other: UITextPosition) -> ComparisonResult
  @available(iOS 3.2, *)
  func offset(from: UITextPosition, to toPosition: UITextPosition) -> Int
  weak var inputDelegate: @sil_weak UITextInputDelegate? { get set }
  var tokenizer: UITextInputTokenizer { get }
  @available(iOS 3.2, *)
  func position(within range: UITextRange, farthestIn direction: UITextLayoutDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRange(byExtending position: UITextPosition, in direction: UITextLayoutDirection) -> UITextRange?
  @available(iOS 6.0, *)
  func baseWritingDirection(for position: UITextPosition, in direction: UITextStorageDirection) -> NSWritingDirection
  @available(iOS 6.0, *)
  func setBaseWritingDirection(_ writingDirection: NSWritingDirection, for range: UITextRange)
  @available(iOS 3.2, *)
  func firstRect(for range: UITextRange) -> CGRect
  @available(iOS 3.2, *)
  func caretRect(for position: UITextPosition) -> CGRect
  @available(iOS 6.0, *)
  func selectionRects(for range: UITextRange) -> [UITextSelectionRect]
  @available(iOS 3.2, *)
  func closestPosition(to point: CGPoint) -> UITextPosition?
  @available(iOS 3.2, *)
  func closestPosition(to point: CGPoint, within range: UITextRange) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRange(at point: CGPoint) -> UITextRange?
  @available(iOS 6.0, *)
  optional func shouldChangeText(in range: UITextRange, replacementText text: String) -> Bool
  @available(iOS 3.2, *)
  optional func textStyling(at position: UITextPosition, in direction: UITextStorageDirection) -> [NSAttributedString.Key : Any]?
  @available(iOS 3.2, *)
  optional func position(within range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  optional func characterOffset(of position: UITextPosition, within range: UITextRange) -> Int
  @available(iOS 2.0, *)
  optional var textInputView: UIView { get }
  optional var selectionAffinity: UITextStorageDirection { get set }
  @available(iOS 5.1, *)
  optional func insertDictationResult(_ dictationResult: [UIDictationPhrase])
  @asyncHandler optional func dictationRecordingDidEnd()
  optional func dictationRecognitionFailed()
  optional var insertDictationResultPlaceholder: Any { get }
  optional func frame(forDictationResultPlaceholder placeholder: Any) -> CGRect
  optional func removeDictationResultPlaceholder(_ placeholder: Any, willInsertResult: Bool)
  optional func insertText(_ text: String, alternatives: [String], style: UITextAlternativeStyle)
  @available(iOS 3.2, *)
  optional func setAttributedMarkedText(_ markedText: NSAttributedString?, selectedRange: NSRange)
  @available(iOS 13.0, *)
  optional func insertTextPlaceholder(with size: CGSize) -> UITextPlaceholder
  @available(iOS 13.0, *)
  optional func remove(_ textPlaceholder: UITextPlaceholder)
  @available(iOS 9.0, *)
  optional func beginFloatingCursor(at point: CGPoint)
  @available(iOS 9.0, *)
  optional func updateFloatingCursor(at point: CGPoint)
  @available(iOS 9.0, *)
  optional func endFloatingCursor()
}
@available(iOS, introduced: 3.2, deprecated: 8.0, renamed: "NSAttributedString.Key.backgroundColor")
let UITextInputTextBackgroundColorKey: String
@available(iOS, introduced: 3.2, deprecated: 8.0, renamed: "NSAttributedString.Key.foregroundColor")
let UITextInputTextColorKey: String
@available(iOS, introduced: 3.2, deprecated: 8.0, renamed: "NSAttributedString.Key.font")
let UITextInputTextFontKey: String
@available(iOS 3.2, *)
class UITextPosition : NSObject {
}
@available(iOS 3.2, *)
class UITextRange : NSObject {
  var isEmpty: Bool { get }
  var start: UITextPosition { get }
  var end: UITextPosition { get }
}
@available(iOS 6.0, *)
class UITextSelectionRect : NSObject {
  var rect: CGRect { get }
  var writingDirection: NSWritingDirection { get }
  var containsStart: Bool { get }
  var containsEnd: Bool { get }
  var isVertical: Bool { get }
}
protocol UITextInputDelegate : NSObjectProtocol {
  func selectionWillChange(_ textInput: UITextInput?)
  @asyncHandler func selectionDidChange(_ textInput: UITextInput?)
  func textWillChange(_ textInput: UITextInput?)
  @asyncHandler func textDidChange(_ textInput: UITextInput?)
}
protocol UITextInputTokenizer : NSObjectProtocol {
  @available(iOS 3.2, *)
  func rangeEnclosingPosition(_ position: UITextPosition, with granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func isPosition(_ position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  @available(iOS 3.2, *)
  func position(from position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func isPosition(_ position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
@available(iOS 3.2, *)
class UITextInputStringTokenizer : NSObject, UITextInputTokenizer {
  init(textInput: UIResponder & UITextInput)
}
@available(iOS 4.2, *)
class UITextInputMode : NSObject, NSSecureCoding {
  var primaryLanguage: String? { get }
  class var activeInputModes: [UITextInputMode] { get }
}
extension UITextInputMode {
  @available(iOS 4.2, *)
  class let currentInputModeDidChangeNotification: NSNotification.Name
}
@available(iOS, introduced: 3.2, deprecated: 13.0, renamed: "NSWritingDirection")
typealias UITextWritingDirection = NSWritingDirection
