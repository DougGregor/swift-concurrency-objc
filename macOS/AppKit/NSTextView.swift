
enum NSSelectionGranularity : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case selectByCharacter
  case selectByWord
  case selectByParagraph
}
enum NSSelectionAffinity : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case upstream
  case downstream
}
@available(macOS 10.5, *)
let NSAllRomanInputSourcesLocaleIdentifier: String
class NSTextView : NSText, NSColorChanging, NSMenuItemValidation, NSUserInterfaceValidations, NSTextInputClient, NSTextLayoutOrientationProvider, NSDraggingSource, NSStandardKeyBindingResponding, NSTextInput, NSAccessibilityNavigableStaticText, NSTextContent {
  init(frame frameRect: NSRect, textContainer container: NSTextContainer?)
  unowned(unsafe) var textContainer: @sil_unmanaged NSTextContainer?
  func replaceTextContainer(_ newContainer: NSTextContainer)
  var textContainerInset: NSSize
  var textContainerOrigin: NSPoint { get }
  func invalidateTextContainerOrigin()
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage? { get }
  func setConstrainedFrameSize(_ desiredSize: NSSize)
  func setAlignment(_ alignment: NSTextAlignment, range: NSRange)
  func setBaseWritingDirection(_ writingDirection: NSWritingDirection, range: NSRange)
  func turnOffKerning(_ sender: Any?)
  func tightenKerning(_ sender: Any?)
  func loosenKerning(_ sender: Any?)
  func useStandardKerning(_ sender: Any?)
  func turnOffLigatures(_ sender: Any?)
  func useStandardLigatures(_ sender: Any?)
  func useAllLigatures(_ sender: Any?)
  func raiseBaseline(_ sender: Any?)
  func lowerBaseline(_ sender: Any?)
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use the traditional shaped characters encoded in the Unicode standard. Access the characters via the character palette.")
  func toggleTraditionalCharacterShape(_ sender: Any?)
  func outline(_ sender: Any?)
  func performFindPanelAction(_ sender: Any?)
  func alignJustified(_ sender: Any?)
  func changeAttributes(_ sender: Any?)
  func changeDocumentBackgroundColor(_ sender: Any?)
  func orderFrontSpacingPanel(_ sender: Any?)
  func orderFrontLinkPanel(_ sender: Any?)
  func orderFrontListPanel(_ sender: Any?)
  func orderFrontTablePanel(_ sender: Any?)
  func setNeedsDisplay(_ rect: NSRect, avoidAdditionalLayout flag: Bool)
  var shouldDrawInsertionPoint: Bool { get }
  func drawInsertionPoint(in rect: NSRect, color: NSColor, turnedOn flag: Bool)
  func drawBackground(in rect: NSRect)
  func updateRuler()
  func updateFontPanel()
  func updateDragTypeRegistration()
  func selectionRange(forProposedRange proposedCharRange: NSRange, granularity: NSSelectionGranularity) -> NSRange
  func clicked(onLink link: Any, at charIndex: Int)
  func startSpeaking(_ sender: Any?)
  func stopSpeaking(_ sender: Any?)
  @available(macOS 10.7, *)
  func setLayoutOrientation(_ orientation: NSLayoutManager.TextLayoutOrientation)
  @available(macOS 10.7, *)
  func changeLayoutOrientation(_ sender: Any?)
  @available(macOS 10.5, *)
  func characterIndexForInsertion(at point: NSPoint) -> Int
  @available(macOS 10.12, *)
  class var stronglyReferencesTextStorage: Bool { get }
  @available(macOS 10.14, *)
  func performValidatedReplacement(in range: NSRange, with attributedString: NSAttributedString) -> Bool
  @available(macOS 10.14, *)
  var usesAdaptiveColorMappingForDarkAppearance: Bool
}
extension NSTextView {
  var rangeForUserCompletion: NSRange { get }
  func completions(forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]?
  func insertCompletion(_ word: String, forPartialWordRange charRange: NSRange, movement: Int, isFinal flag: Bool)
}
extension NSTextView {
  var writablePasteboardTypes: [NSPasteboard.PasteboardType] { get }
  func writeSelection(to pboard: NSPasteboard, type: NSPasteboard.PasteboardType) -> Bool
  func writeSelection(to pboard: NSPasteboard, types: [NSPasteboard.PasteboardType]) -> Bool
  var readablePasteboardTypes: [NSPasteboard.PasteboardType] { get }
  func preferredPasteboardType(from availableTypes: [NSPasteboard.PasteboardType], restrictedToTypesFrom allowedTypes: [NSPasteboard.PasteboardType]?) -> NSPasteboard.PasteboardType?
  func readSelection(from pboard: NSPasteboard, type: NSPasteboard.PasteboardType) -> Bool
  func readSelection(from pboard: NSPasteboard) -> Bool
  class func registerForServices()
  func pasteAsPlainText(_ sender: Any?)
  func pasteAsRichText(_ sender: Any?)
}
extension NSTextView {
  func dragSelection(with event: NSEvent, offset mouseOffset: NSSize, slideBack: Bool) -> Bool
  func dragImageForSelection(with event: NSEvent, origin: NSPointPointer?) -> NSImage?
  var acceptableDragTypes: [NSPasteboard.PasteboardType] { get }
  func dragOperation(for dragInfo: NSDraggingInfo, type: NSPasteboard.PasteboardType) -> NSDragOperation
  func cleanUpAfterDragOperation()
}
extension NSTextView {
  var selectedRanges: [NSValue]
  func setSelectedRanges(_ ranges: [NSValue], affinity: NSSelectionAffinity, stillSelecting stillSelectingFlag: Bool)
  func setSelectedRange(_ charRange: NSRange, affinity: NSSelectionAffinity, stillSelecting stillSelectingFlag: Bool)
  var selectionAffinity: NSSelectionAffinity { get }
  var selectionGranularity: NSSelectionGranularity
  var selectedTextAttributes: [NSAttributedString.Key : Any]
  @NSCopying var insertionPointColor: NSColor
  func updateInsertionPointStateAndRestartTimer(_ restartFlag: Bool)
  var markedTextAttributes: [NSAttributedString.Key : Any]?
  var linkTextAttributes: [NSAttributedString.Key : Any]?
  @available(macOS 10.5, *)
  var displaysLinkToolTips: Bool
  var acceptsGlyphInfo: Bool
  var usesRuler: Bool
  @available(macOS 10.7, *)
  var usesInspectorBar: Bool
  var isContinuousSpellCheckingEnabled: Bool
  func toggleContinuousSpellChecking(_ sender: Any?)
  var spellCheckerDocumentTag: Int { get }
  @available(macOS 10.5, *)
  var isGrammarCheckingEnabled: Bool
  @available(macOS 10.5, *)
  func toggleGrammarChecking(_ sender: Any?)
  @available(macOS 10.5, *)
  func setSpellingState(_ value: Int, range charRange: NSRange)
  var typingAttributes: [NSAttributedString.Key : Any]
  func shouldChangeText(inRanges affectedRanges: [NSValue], replacementStrings: [String]?) -> Bool
  var rangesForUserTextChange: [NSValue]? { get }
  var rangesForUserCharacterAttributeChange: [NSValue]? { get }
  var rangesForUserParagraphAttributeChange: [NSValue]? { get }
  func shouldChangeText(in affectedCharRange: NSRange, replacementString: String?) -> Bool
  func didChangeText()
  var rangeForUserTextChange: NSRange { get }
  var rangeForUserCharacterAttributeChange: NSRange { get }
  var rangeForUserParagraphAttributeChange: NSRange { get }
  var allowsDocumentBackgroundColorChange: Bool
  @NSCopying var defaultParagraphStyle: NSParagraphStyle?
  var allowsUndo: Bool
  func breakUndoCoalescing()
  @available(macOS 10.6, *)
  var isCoalescingUndo: Bool { get }
  @available(macOS 10.5, *)
  var allowsImageEditing: Bool
  @available(macOS 10.5, *)
  func showFindIndicator(for charRange: NSRange)
  @available(macOS 10.10, *)
  var usesRolloverButtonForSelection: Bool
  @available(macOS 10.5, *)
  var allowedInputSourceLocales: [String]?
}
extension NSTextView {
  var smartInsertDeleteEnabled: Bool
  func smartDeleteRange(forProposedRange proposedCharRange: NSRange) -> NSRange
  func toggleSmartInsertDelete(_ sender: Any?)
  func smartInsert(for pasteString: String, replacing charRangeToReplace: NSRange, before beforeString: AutoreleasingUnsafeMutablePointer<NSString?>?, after afterString: AutoreleasingUnsafeMutablePointer<NSString?>?)
  func smartInsert(beforeStringFor pasteString: String, replacing charRangeToReplace: NSRange) -> String?
  func smartInsert(afterStringFor pasteString: String, replacing charRangeToReplace: NSRange) -> String?
  @available(macOS 10.5, *)
  var isAutomaticQuoteSubstitutionEnabled: Bool
  @available(macOS 10.5, *)
  func toggleAutomaticQuoteSubstitution(_ sender: Any?)
  @available(macOS 10.5, *)
  var isAutomaticLinkDetectionEnabled: Bool
  @available(macOS 10.5, *)
  func toggleAutomaticLinkDetection(_ sender: Any?)
  @available(macOS 10.6, *)
  var isAutomaticDataDetectionEnabled: Bool
  @available(macOS 10.6, *)
  func toggleAutomaticDataDetection(_ sender: Any?)
  @available(macOS 10.6, *)
  var isAutomaticDashSubstitutionEnabled: Bool
  @available(macOS 10.6, *)
  func toggleAutomaticDashSubstitution(_ sender: Any?)
  @available(macOS 10.6, *)
  var isAutomaticTextReplacementEnabled: Bool
  @available(macOS 10.6, *)
  func toggleAutomaticTextReplacement(_ sender: Any?)
  @available(macOS 10.6, *)
  var isAutomaticSpellingCorrectionEnabled: Bool
  @available(macOS 10.6, *)
  func toggleAutomaticSpellingCorrection(_ sender: Any?)
  @available(macOS 10.6, *)
  var enabledTextCheckingTypes: NSTextCheckingTypes
  @available(macOS 10.6, *)
  func checkText(in range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [NSSpellChecker.OptionKey : Any] = [:])
  @available(macOS 10.6, *)
  func handleTextCheckingResults(_ results: [NSTextCheckingResult], forRange range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [NSSpellChecker.OptionKey : Any] = [:], orthography: NSOrthography, wordCount: Int)
  @available(macOS 10.6, *)
  func orderFrontSubstitutionsPanel(_ sender: Any?)
  @available(macOS 10.6, *)
  func checkTextInSelection(_ sender: Any?)
  @available(macOS 10.6, *)
  func checkTextInDocument(_ sender: Any?)
  var usesFindPanel: Bool
  @available(macOS 10.7, *)
  var usesFindBar: Bool
  @available(macOS 10.7, *)
  var isIncrementalSearchingEnabled: Bool
}
extension NSTextView {
  @available(macOS 10.7, *)
  @IBAction func toggleQuickLookPreviewPanel(_ sender: Any?)
  @available(macOS 10.7, *)
  func updateQuickLookPreviewPanel()
}
extension NSTextView {
  @available(macOS 10.8, *)
  @IBAction func orderFrontSharingServicePicker(_ sender: Any?)
}
extension NSTextView : NSCandidateListTouchBarItemDelegate, NSTouchBarDelegate {
  @available(macOS 10.12.2, *)
  var isAutomaticTextCompletionEnabled: Bool
  @available(macOS 10.12.2, *)
  @IBAction func toggleAutomaticTextCompletion(_ sender: Any?)
  @available(macOS 10.12.2, *)
  var allowsCharacterPickerTouchBarItem: Bool
  @available(macOS 10.12.2, *)
  func updateTouchBarItemIdentifiers()
  @available(macOS 10.12.2, *)
  func updateTextTouchBarItems()
  @available(macOS 10.12.2, *)
  func updateCandidates()
}
extension NSTextView {
  @available(macOS 10.14, *)
  class func scrollableTextView() -> NSScrollView
  @available(macOS 10.14, *)
  class func fieldEditor() -> Self
  @available(macOS 10.14, *)
  class func scrollableDocumentContentTextView() -> NSScrollView
  @available(macOS 10.14, *)
  class func scrollablePlainDocumentContentTextView() -> NSScrollView
}
extension NSTextView {
}
protocol NSTextViewDelegate : NSTextDelegate {
  optional func textView(_ textView: NSTextView, clickedOnLink link: Any, at charIndex: Int) -> Bool
  optional func textView(_ textView: NSTextView, clickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: NSRect, at charIndex: Int)
  optional func textView(_ textView: NSTextView, doubleClickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: NSRect, at charIndex: Int)
  optional func textView(_ view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, in rect: NSRect, event: NSEvent, at charIndex: Int)
  optional func textView(_ view: NSTextView, writablePasteboardTypesFor cell: NSTextAttachmentCellProtocol, at charIndex: Int) -> [NSPasteboard.PasteboardType]
  optional func textView(_ view: NSTextView, write cell: NSTextAttachmentCellProtocol, at charIndex: Int, to pboard: NSPasteboard, type: NSPasteboard.PasteboardType) -> Bool
  optional func textView(_ textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  optional func textView(_ textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [NSValue], toCharacterRanges newSelectedCharRanges: [NSValue]) -> [NSValue]
  optional func textView(_ textView: NSTextView, shouldChangeTextInRanges affectedRanges: [NSValue], replacementStrings: [String]?) -> Bool
  @available(macOS 10.0, *)
  optional func textView(_ textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : Any] = [:], toAttributes newTypingAttributes: [NSAttributedString.Key : Any] = [:]) -> [NSAttributedString.Key : Any]
  @asyncHandler optional func textViewDidChangeSelection(_ notification: Notification)
  @asyncHandler optional func textViewDidChangeTypingAttributes(_ notification: Notification)
  optional func textView(_ textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAt characterIndex: Int) -> String?
  optional func textView(_ textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>?) -> [String]
  optional func textView(_ textView: NSTextView, shouldChangeTextIn affectedCharRange: NSRange, replacementString: String?) -> Bool
  optional func textView(_ textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool
  @available(macOS 10.5, *)
  optional func textView(_ textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  @available(macOS 10.5, *)
  optional func textView(_ view: NSTextView, menu: NSMenu, for event: NSEvent, at charIndex: Int) -> NSMenu?
  @available(macOS 10.6, *)
  optional func textView(_ view: NSTextView, willCheckTextIn range: NSRange, options: [NSSpellChecker.OptionKey : Any] = [:], types checkingTypes: UnsafeMutablePointer<NSTextCheckingTypes>) -> [NSSpellChecker.OptionKey : Any]
  @available(macOS 10.6, *)
  optional func textView(_ view: NSTextView, didCheckTextIn range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [NSSpellChecker.OptionKey : Any] = [:], results: [NSTextCheckingResult], orthography: NSOrthography, wordCount: Int) -> [NSTextCheckingResult]
  @available(macOS 10.7, *)
  optional func textView(_ textView: NSTextView, urlForContentsOf textAttachment: NSTextAttachment, at charIndex: Int) -> URL?
  @available(macOS 10.8, *)
  optional func textView(_ textView: NSTextView, willShow servicePicker: NSSharingServicePicker, forItems items: [Any]) -> NSSharingServicePicker?
  @available(macOS 10.0, *)
  optional func undoManager(for view: NSTextView) -> UndoManager?
  @available(macOS 10.12.2, *)
  optional func textView(_ textView: NSTextView, shouldUpdateTouchBarItemIdentifiers identifiers: [NSTouchBarItem.Identifier]) -> [NSTouchBarItem.Identifier]
  @available(macOS 10.12.2, *)
  optional func textView(_ textView: NSTextView, candidatesForSelectedRange selectedRange: NSRange) -> [Any]?
  @available(macOS 10.12.2, *)
  optional func textView(_ textView: NSTextView, candidates: [NSTextCheckingResult], forSelectedRange selectedRange: NSRange) -> [NSTextCheckingResult]
  @available(macOS 10.12.2, *)
  optional func textView(_ textView: NSTextView, shouldSelectCandidateAt index: Int) -> Bool
}
extension NSTouchBarItem.Identifier {
  @available(macOS 10.12.2, *)
  static let characterPicker: NSTouchBarItem.Identifier
  @available(macOS 10.12.2, *)
  static let textColorPicker: NSTouchBarItem.Identifier
  @available(macOS 10.12.2, *)
  static let textStyle: NSTouchBarItem.Identifier
  @available(macOS 10.12.2, *)
  static let textAlignment: NSTouchBarItem.Identifier
  @available(macOS 10.12.2, *)
  static let textList: NSTouchBarItem.Identifier
  @available(macOS 10.12.2, *)
  static let textFormat: NSTouchBarItem.Identifier
}
extension NSTextView {
  class let willChangeNotifyingTextViewNotification: NSNotification.Name
  class let didChangeSelectionNotification: NSNotification.Name
  class let didChangeTypingAttributesNotification: NSNotification.Name
}
enum NSFindPanelAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case showFindPanel
  case next
  case previous
  case replaceAll
  case replace
  case replaceAndFind
  case setFindString
  case replaceAllInSelection
  case selectAll
  case selectAllInSelection
}
extension NSPasteboard.PasteboardType {
  @available(macOS 10.5, *)
  static let findPanelSearchOptions: NSPasteboard.PasteboardType
  struct FindPanelSearchOptionKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension NSPasteboard.PasteboardType.FindPanelSearchOptionKey {
  @available(macOS 10.5, *)
  static let findPanelCaseInsensitiveSearch: NSPasteboard.PasteboardType.FindPanelSearchOptionKey
  @available(macOS 10.5, *)
  static let findPanelSubstringMatch: NSPasteboard.PasteboardType.FindPanelSearchOptionKey
}
enum NSFindPanelSubstringMatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case contains
  case startsWith
  case fullWord
  case endsWith
}
