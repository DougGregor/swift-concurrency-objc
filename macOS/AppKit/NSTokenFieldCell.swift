
extension NSTokenField {
  enum TokenStyle : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    case none
    case rounded
    @available(macOS 10.10, *)
    case squared
    @available(macOS 10.10, *)
    case plainSquared
  }
}
class NSTokenFieldCell : NSTextFieldCell {
  var tokenStyle: NSTokenField.TokenStyle
  var completionDelay: TimeInterval
  class var defaultCompletionDelay: TimeInterval { get }
  var tokenizingCharacterSet: CharacterSet!
  class var defaultTokenizingCharacterSet: CharacterSet { get }
  weak var delegate: @sil_weak NSTokenFieldCellDelegate?
}
protocol NSTokenFieldCellDelegate : NSObjectProtocol {
  optional func tokenFieldCell(_ tokenFieldCell: NSTokenFieldCell, completionsForSubstring substring: String, indexOfToken tokenIndex: Int, indexOfSelectedItem selectedIndex: UnsafeMutablePointer<Int>) -> [Any]
  optional func tokenFieldCell(_ tokenFieldCell: NSTokenFieldCell, shouldAdd tokens: [Any], at index: Int) -> [Any]
  optional func tokenFieldCell(_ tokenFieldCell: NSTokenFieldCell, displayStringForRepresentedObject representedObject: Any) -> String?
  optional func tokenFieldCell(_ tokenFieldCell: NSTokenFieldCell, editingStringForRepresentedObject representedObject: Any) -> String?
  optional func tokenFieldCell(_ tokenFieldCell: NSTokenFieldCell, representedObjectForEditing editingString: String) -> Any?
  optional func tokenFieldCell(_ tokenFieldCell: NSTokenFieldCell, writeRepresentedObjects objects: [Any], to pboard: NSPasteboard) -> Bool
  optional func tokenFieldCell(_ tokenFieldCell: NSTokenFieldCell, readFrom pboard: NSPasteboard) -> [Any]?
  optional func tokenFieldCell(_ tokenFieldCell: NSTokenFieldCell, menuForRepresentedObject representedObject: Any) -> NSMenu?
  optional func tokenFieldCell(_ tokenFieldCell: NSTokenFieldCell, hasMenuForRepresentedObject representedObject: Any) -> Bool
  optional func tokenFieldCell(_ tokenFieldCell: NSTokenFieldCell, styleForRepresentedObject representedObject: Any) -> NSTokenField.TokenStyle
}
