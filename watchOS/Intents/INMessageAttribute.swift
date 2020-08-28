
@available(watchOS 3.2, *)
enum INMessageAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case read
  case unread
  case flagged
  case unflagged
  @available(watchOS 4.0, *)
  case played
}
