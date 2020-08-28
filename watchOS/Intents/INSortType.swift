
@available(watchOS 4.0, *)
enum INSortType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case asIs
  case byDate
}
