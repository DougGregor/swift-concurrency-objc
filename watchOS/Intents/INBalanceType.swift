
@available(watchOS 4.0, *)
enum INBalanceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case money
  case points
  case miles
}
