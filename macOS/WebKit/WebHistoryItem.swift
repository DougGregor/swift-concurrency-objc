
extension NSNotification.Name {
  @available(macOS, introduced: 10.3, deprecated: 10.14)
  static let WebHistoryItemChanged: NSNotification.Name
}
@available(macOS, introduced: 10.3, deprecated: 10.14)
class WebHistoryItem : NSObject, NSCopying {
  init!(urlString URLString: String!, title: String!, lastVisitedTimeInterval time: TimeInterval)
  var originalURLString: String! { get }
  var urlString: String! { get }
  var title: String! { get }
  var lastVisitedTimeInterval: TimeInterval { get }
  var alternateTitle: String!
  var icon: NSImage! { get }
}
