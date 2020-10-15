
extension NSSearchField {
  typealias RecentsAutosaveName = String
}
protocol NSSearchFieldDelegate : NSTextFieldDelegate {
  @available(macOS 10.11, *)
  optional func searchFieldDidStartSearching(_ sender: NSSearchField)
  @available(macOS 10.11, *)
  optional func searchFieldDidEndSearching(_ sender: NSSearchField)
}
class NSSearchField : NSTextField {
  @available(macOS 11.0, *)
  var searchTextBounds: NSRect { get }
  @available(macOS 11.0, *)
  var searchButtonBounds: NSRect { get }
  @available(macOS 11.0, *)
  var cancelButtonBounds: NSRect { get }
  var recentSearches: [String]
  var recentsAutosaveName: NSSearchField.RecentsAutosaveName?
  @available(macOS 10.10, *)
  var searchMenuTemplate: NSMenu?
  @available(macOS 10.10, *)
  var sendsWholeSearchString: Bool
  @available(macOS 10.10, *)
  var maximumRecents: Int
  @available(macOS 10.10, *)
  var sendsSearchStringImmediately: Bool
}
extension NSSearchField {
  @available(macOS, introduced: 10.11, deprecated: 100000)
  func rectForSearchText(whenCentered isCentered: Bool) -> NSRect
  @available(macOS, introduced: 10.11, deprecated: 100000)
  func rectForSearchButton(whenCentered isCentered: Bool) -> NSRect
  @available(macOS, introduced: 10.11, deprecated: 100000)
  func rectForCancelButton(whenCentered isCentered: Bool) -> NSRect
  @available(macOS, introduced: 10.11, deprecated: 100000, message: "The placeholder centering UI design is no longer available. Setting this property is no-op.")
  var centersPlaceholder: Bool
}
