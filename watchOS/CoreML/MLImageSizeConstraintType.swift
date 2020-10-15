
@available(watchOS 5.0, *)
enum MLImageSizeConstraintType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case enumerated
  case range
}
