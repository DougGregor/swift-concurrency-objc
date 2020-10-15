
@available(iOS 13.0, *)
enum INTaskPriority : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case notFlagged
  case flagged
}
