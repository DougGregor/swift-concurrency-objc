
extension NSSearchField {
  class let recentsTitleMenuItemTag: Int
  class let recentsMenuItemTag: Int
  class let clearRecentsMenuItemTag: Int
  class let noRecentsMenuItemTag: Int
}
class NSSearchFieldCell : NSTextFieldCell {
  var searchButtonCell: NSButtonCell?
  var cancelButtonCell: NSButtonCell?
  func resetSearchButtonCell()
  func resetCancelButtonCell()
  func searchTextRect(forBounds rect: NSRect) -> NSRect
  func searchButtonRect(forBounds rect: NSRect) -> NSRect
  func cancelButtonRect(forBounds rect: NSRect) -> NSRect
  var searchMenuTemplate: NSMenu?
  var sendsWholeSearchString: Bool
  var maximumRecents: Int
  var recentSearches: [String]!
  var recentsAutosaveName: NSSearchField.RecentsAutosaveName?
  var sendsSearchStringImmediately: Bool
}
