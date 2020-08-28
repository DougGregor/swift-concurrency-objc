
@available(iOS 10.3, *)
enum INAmountType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case minimumDue
  case amountDue
  case currentBalance
  @available(iOS 11.0, *)
  case maximumTransferAmount
  @available(iOS 11.0, *)
  case minimumTransferAmount
  @available(iOS 11.0, *)
  case statementBalance
}
