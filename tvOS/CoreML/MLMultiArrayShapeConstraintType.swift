
@available(tvOS 12.0, *)
enum MLMultiArrayShapeConstraintType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case enumerated
  case range
}
