
@available(watchOS 3.2, *)
enum INPaymentStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case pending
  case completed
  case canceled
  case failed
  case unpaid
}
