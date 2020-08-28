
@available(tvOS 10.0, *)
enum INConditionalOperator : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case all
  case any
  case none
}
