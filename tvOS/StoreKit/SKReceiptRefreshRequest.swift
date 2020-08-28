
@available(tvOS 7.0, *)
class SKReceiptRefreshRequest : SKRequest {
  @available(tvOS 7.0, *)
  init(receiptProperties properties: [String : Any]?)
  @available(tvOS 7.0, *)
  var receiptProperties: [String : Any]? { get }
}
@available(tvOS 7.1, *)
func SKTerminateForInvalidReceipt()
@available(tvOS 7.0, *)
let SKReceiptPropertyIsExpired: String
@available(tvOS 7.0, *)
let SKReceiptPropertyIsRevoked: String
@available(tvOS 7.0, *)
let SKReceiptPropertyIsVolumePurchase: String
