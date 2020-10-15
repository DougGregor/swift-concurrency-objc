
@available(watchOS 6.2, *)
class SKReceiptRefreshRequest : SKRequest {
  @available(watchOS 6.2, *)
  init(receiptProperties properties: [String : Any]?)
  @available(watchOS 6.2, *)
  var receiptProperties: [String : Any]? { get }
}
@available(watchOS 6.2, *)
func SKTerminateForInvalidReceipt()
@available(watchOS 6.2, *)
let SKReceiptPropertyIsExpired: String
@available(watchOS 6.2, *)
let SKReceiptPropertyIsRevoked: String
@available(watchOS 6.2, *)
let SKReceiptPropertyIsVolumePurchase: String
