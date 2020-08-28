
protocol NSTokenFieldDelegate : NSTextFieldDelegate {
  optional func tokenField(_ tokenField: NSTokenField, completionsForSubstring substring: String, indexOfToken tokenIndex: Int, indexOfSelectedItem selectedIndex: UnsafeMutablePointer<Int>?) -> [Any]?
  optional func tokenField(_ tokenField: NSTokenField, shouldAdd tokens: [Any], at index: Int) -> [Any]
  optional func tokenField(_ tokenField: NSTokenField, displayStringForRepresentedObject representedObject: Any) -> String?
  optional func tokenField(_ tokenField: NSTokenField, editingStringForRepresentedObject representedObject: Any) -> String?
  optional func tokenField(_ tokenField: NSTokenField, representedObjectForEditing editingString: String) -> Any?
  optional func tokenField(_ tokenField: NSTokenField, writeRepresentedObjects objects: [Any], to pboard: NSPasteboard) -> Bool
  optional func tokenField(_ tokenField: NSTokenField, readFrom pboard: NSPasteboard) -> [Any]?
  optional func tokenField(_ tokenField: NSTokenField, menuForRepresentedObject representedObject: Any) -> NSMenu?
  optional func tokenField(_ tokenField: NSTokenField, hasMenuForRepresentedObject representedObject: Any) -> Bool
  optional func tokenField(_ tokenField: NSTokenField, styleForRepresentedObject representedObject: Any) -> NSTokenField.TokenStyle
}
class NSTokenField : NSTextField {
  var tokenStyle: NSTokenField.TokenStyle
  var completionDelay: TimeInterval
  class var defaultCompletionDelay: TimeInterval { get }
  var tokenizingCharacterSet: CharacterSet!
  class var defaultTokenizingCharacterSet: CharacterSet { get }
}
