
class NSControl : NSView {
  weak var target: @sil_weak AnyObject?
  var action: Selector?
  var ignoresMultiClick: Bool
  var isContinuous: Bool
  var isEnabled: Bool
  var refusesFirstResponder: Bool
  @available(macOS 10.10, *)
  var isHighlighted: Bool
  @available(macOS 10.10, *)
  var controlSize: NSControl.ControlSize
  var formatter: Formatter?
  var objectValue: Any?
  var stringValue: String
  @NSCopying var attributedStringValue: NSAttributedString
  var intValue: Int32
  var integerValue: Int
  var floatValue: Float
  var doubleValue: Double
  @available(macOS 10.10, *)
  func sizeThatFits(_ size: NSSize) -> NSSize
  func sizeToFit()
  func sendAction(on mask: NSEvent.EventTypeMask) -> Int
  func sendAction(_ action: Selector?, to target: Any?) -> Bool
  func takeIntValueFrom(_ sender: Any?)
  func takeFloatValueFrom(_ sender: Any?)
  func takeDoubleValueFrom(_ sender: Any?)
  func takeStringValueFrom(_ sender: Any?)
  func takeObjectValueFrom(_ sender: Any?)
  @available(macOS 10.5, *)
  func takeIntegerValueFrom(_ sender: Any?)
  func performClick(_ sender: Any?)
  @NSCopying var font: NSFont?
  @available(macOS 10.10, *)
  var usesSingleLineMode: Bool
  @available(macOS 10.10, *)
  var lineBreakMode: NSLineBreakMode
  var alignment: NSTextAlignment
  var baseWritingDirection: NSWritingDirection
  @available(macOS 10.8, *)
  var allowsExpansionToolTips: Bool
  @available(macOS 10.10, *)
  func expansionFrame(withFrame contentFrame: NSRect) -> NSRect
  @available(macOS 10.10, *)
  func draw(withExpansionFrame contentFrame: NSRect, in view: NSView)
}
extension NSControl {
  func currentEditor() -> NSText?
  func abortEditing() -> Bool
  func validateEditing()
  @available(macOS 10.10, *)
  func edit(withFrame rect: NSRect, editor textObj: NSText, delegate: Any?, event: NSEvent)
  @available(macOS 10.10, *)
  func select(withFrame rect: NSRect, editor textObj: NSText, delegate: Any?, start selStart: Int, length selLength: Int)
  @available(macOS 10.10, *)
  func endEditing(_ textObj: NSText)
}
protocol NSControlTextEditingDelegate : NSObjectProtocol {
  @asyncHandler optional func controlTextDidBeginEditing(_ obj: Notification)
  @asyncHandler optional func controlTextDidEndEditing(_ obj: Notification)
  @asyncHandler optional func controlTextDidChange(_ obj: Notification)
  optional func control(_ control: NSControl, textShouldBeginEditing fieldEditor: NSText) -> Bool
  optional func control(_ control: NSControl, textShouldEndEditing fieldEditor: NSText) -> Bool
  optional func control(_ control: NSControl, didFailToFormatString string: String, errorDescription error: String?) -> Bool
  @asyncHandler optional func control(_ control: NSControl, didFailToValidatePartialString string: String, errorDescription error: String?)
  optional func control(_ control: NSControl, isValidObject obj: Any?) -> Bool
  optional func control(_ control: NSControl, textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool
  optional func control(_ control: NSControl, textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
}
extension NSControl {
  class let textDidBeginEditingNotification: NSNotification.Name
  class let textDidEndEditingNotification: NSNotification.Name
  class let textDidChangeNotification: NSNotification.Name
}
extension NSControl {
  class var cellClass: AnyClass?
  var cell: NSCell?
  func selectedCell() -> NSCell?
  func selectedTag() -> Int
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Set the needsDisplay property to YES instead")
  func setNeedsDisplay()
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Override -layout instead. This method should never be called")
  func calcSize()
  func updateCell(_ cell: NSCell)
  func updateCellInside(_ cell: NSCell)
  func drawCellInside(_ cell: NSCell)
  func drawCell(_ cell: NSCell)
  func selectCell(_ cell: NSCell)
}
