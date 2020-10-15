
@available(iOS 13.0, *)
enum INMediaSortOrder : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case newest
  case oldest
  case best
  case worst
  case popular
  case unpopular
  case trending
  case recommended
}
