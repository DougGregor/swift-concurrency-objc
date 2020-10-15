
@available(watchOS 6.0, *)
enum INTaskPriority : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case notFlagged
  case flagged
}
