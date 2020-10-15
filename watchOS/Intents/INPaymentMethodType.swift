
@available(watchOS 3.2, *)
enum INPaymentMethodType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case checking
  case savings
  case brokerage
  case debit
  case credit
  case prepaid
  case store
  case applePay
}
