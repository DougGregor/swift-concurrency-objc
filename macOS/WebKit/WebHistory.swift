
extension NSNotification.Name {
  @available(macOS, introduced: 10.3, deprecated: 10.14)
  static let WebHistoryItemsAdded: NSNotification.Name
  @available(macOS, introduced: 10.3, deprecated: 10.14)
  static let WebHistoryItemsRemoved: NSNotification.Name
  @available(macOS, introduced: 10.3, deprecated: 10.14)
  static let WebHistoryAllItemsRemoved: NSNotification.Name
  @available(macOS, introduced: 10.3, deprecated: 10.14)
  static let WebHistoryLoaded: NSNotification.Name
  @available(macOS, introduced: 10.3, deprecated: 10.14)
  static let WebHistorySaved: NSNotification.Name
}
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebHistoryItemsKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
class WebHistory : NSObject {
  class func optionalShared() -> WebHistory!
  class func setOptionalShared(_ history: WebHistory!)
  func load(from URL: URL!) throws
  func save(to URL: URL!) throws
  func addItems(_ newItems: [Any]!)
  func removeItems(_ items: [Any]!)
  func removeAllItems()
  var orderedLastVisitedDays: [Any]! { get }
  func orderedItemsLastVisited(onDay calendarDate: NSCalendarDate!) -> [Any]!
  func item(for URL: URL!) -> WebHistoryItem!
  var historyItemLimit: Int32
  var historyAgeInDaysLimit: Int32
}
