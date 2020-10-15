
@available(watchOS 3.2, *)
enum INConditionalOperator : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case all
  case any
  case none
}
