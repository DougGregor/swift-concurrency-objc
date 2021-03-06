
@available(watchOS 4.0, *)
enum INTaskStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case notCompleted
  case completed
}
