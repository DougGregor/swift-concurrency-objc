
@available(iOS 10.0, *)
enum INMessageAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case read
  case unread
  case flagged
  case unflagged
  @available(iOS 11.0, *)
  case played
}
