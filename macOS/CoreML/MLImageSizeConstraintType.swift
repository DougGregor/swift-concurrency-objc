
@available(macOS 10.14, *)
enum MLImageSizeConstraintType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case enumerated
  case range
}
