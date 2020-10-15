
protocol NSTextInputClient {
  func insertText(_ string: Any, replacementRange: NSRange)
  func doCommand(by selector: Selector)
  func setMarkedText(_ string: Any, selectedRange: NSRange, replacementRange: NSRange)
  func unmarkText()
  func selectedRange() -> NSRange
  func markedRange() -> NSRange
  func hasMarkedText() -> Bool
  @available(macOS 10.0, *)
  func attributedSubstring(forProposedRange range: NSRange, actualRange: NSRangePointer?) -> NSAttributedString?
  @available(macOS 10.0, *)
  func validAttributesForMarkedText() -> [NSAttributedString.Key]
  func firstRect(forCharacterRange range: NSRange, actualRange: NSRangePointer?) -> NSRect
  func characterIndex(for point: NSPoint) -> Int
  @available(macOS 10.0, *)
  optional func attributedString() -> NSAttributedString
  optional func fractionOfDistanceThroughGlyph(for point: NSPoint) -> CGFloat
  optional func baselineDeltaForCharacter(at anIndex: Int) -> CGFloat
  optional func windowLevel() -> Int
  @available(macOS 10.6, *)
  optional func drawsVerticallyForCharacter(at charIndex: Int) -> Bool
}
