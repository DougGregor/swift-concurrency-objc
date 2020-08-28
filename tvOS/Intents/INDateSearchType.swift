
@available(tvOS 11.0, *)
enum INDateSearchType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case byDueDate
  case byModifiedDate
  case byCreatedDate
}
