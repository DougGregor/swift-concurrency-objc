
@available(macOS 10.0, *)
enum NSTextAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case left
  case right
  case center
  case justified
  case natural
}
@available(macOS 10.0, *)
enum NSWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case natural
  case leftToRight
  case rightToLeft
}
class NSText : NSView, NSChangeSpelling, NSIgnoreMisspelledWords {
  var string: String
  func replaceCharacters(in range: NSRange, with string: String)
  func replaceCharacters(in range: NSRange, withRTF rtfData: Data)
  func replaceCharacters(in range: NSRange, withRTFD rtfdData: Data)
  func rtf(from range: NSRange) -> Data?
  func rtfd(from range: NSRange) -> Data?
  func writeRTFD(toFile path: String, atomically flag: Bool) -> Bool
  func readRTFD(fromFile path: String) -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged NSTextDelegate?
  var isEditable: Bool
  var isSelectable: Bool
  var isRichText: Bool
  var importsGraphics: Bool
  var isFieldEditor: Bool
  var usesFontPanel: Bool
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor?
  var isRulerVisible: Bool { get }
  var selectedRange: NSRange
  func scrollRangeToVisible(_ range: NSRange)
  var font: NSFont?
  @NSCopying var textColor: NSColor?
  var alignment: NSTextAlignment
  var baseWritingDirection: NSWritingDirection
  func setTextColor(_ color: NSColor?, range: NSRange)
  func setFont(_ font: NSFont, range: NSRange)
  var maxSize: NSSize
  var minSize: NSSize
  var isHorizontallyResizable: Bool
  var isVerticallyResizable: Bool
  func sizeToFit()
  func copy(_ sender: Any?)
  func copyFont(_ sender: Any?)
  func copyRuler(_ sender: Any?)
  func cut(_ sender: Any?)
  func delete(_ sender: Any?)
  func paste(_ sender: Any?)
  func pasteFont(_ sender: Any?)
  func pasteRuler(_ sender: Any?)
  func changeFont(_ sender: Any?)
  func alignLeft(_ sender: Any?)
  func alignRight(_ sender: Any?)
  func alignCenter(_ sender: Any?)
  func `subscript`(_ sender: Any?)
  func superscript(_ sender: Any?)
  func underline(_ sender: Any?)
  func unscript(_ sender: Any?)
  func showGuessPanel(_ sender: Any?)
  func checkSpelling(_ sender: Any?)
  func toggleRuler(_ sender: Any?)
}
var NSEnterCharacter: Int { get }
var NSBackspaceCharacter: Int { get }
var NSTabCharacter: Int { get }
var NSNewlineCharacter: Int { get }
var NSFormFeedCharacter: Int { get }
var NSCarriageReturnCharacter: Int { get }
var NSBackTabCharacter: Int { get }
var NSDeleteCharacter: Int { get }
var NSLineSeparatorCharacter: Int { get }
var NSParagraphSeparatorCharacter: Int { get }
enum NSTextMovement : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `return`
  case tab
  case backtab
  case left
  case right
  case up
  case down
  case cancel
  case other
}
extension NSText {
  class let didBeginEditingNotification: NSNotification.Name
  class let didEndEditingNotification: NSNotification.Name
  class let didChangeNotification: NSNotification.Name
  @available(macOS 10.13, *)
  class let movementUserInfoKey: String
}
var NSIllegalTextMovement: Int { get }
var NSReturnTextMovement: Int { get }
var NSTabTextMovement: Int { get }
var NSBacktabTextMovement: Int { get }
var NSLeftTextMovement: Int { get }
var NSRightTextMovement: Int { get }
var NSUpTextMovement: Int { get }
var NSDownTextMovement: Int { get }
var NSCancelTextMovement: Int { get }
var NSOtherTextMovement: Int { get }
protocol NSTextDelegate : NSObjectProtocol {
  optional func textShouldBeginEditing(_ textObject: NSText) -> Bool
  optional func textShouldEndEditing(_ textObject: NSText) -> Bool
  optional func textDidBeginEditing(_ notification: Notification)
  optional func textDidEndEditing(_ notification: Notification)
  optional func textDidChange(_ notification: Notification)
}
@available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use NSWritingDirectionEmbedding instead")
var NSTextWritingDirectionEmbedding: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use NSWritingDirectionOverride instead")
var NSTextWritingDirectionOverride: Int { get }
