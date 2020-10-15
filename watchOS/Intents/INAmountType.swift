
@available(watchOS 3.2, *)
enum INAmountType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case minimumDue
  case amountDue
  case currentBalance
  @available(watchOS 4.0, *)
  case maximumTransferAmount
  @available(watchOS 4.0, *)
  case minimumTransferAmount
  @available(watchOS 4.0, *)
  case statementBalance
}
