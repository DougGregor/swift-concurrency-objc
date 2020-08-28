
@available(iOS 11.0, *)
enum INSortType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case asIs
  case byDate
}
