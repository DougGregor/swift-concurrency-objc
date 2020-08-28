
@available(macOS 10.9, *)
class SKReceiptRefreshRequest : SKRequest {
  @available(macOS 10.9, *)
  init(receiptProperties properties: [String : Any]?)
  @available(macOS 10.9, *)
  var receiptProperties: [String : Any]? { get }
}
@available(macOS 10.14, *)
func SKTerminateForInvalidReceipt()
@available(macOS 10.9, *)
let SKReceiptPropertyIsExpired: String
@available(macOS 10.9, *)
let SKReceiptPropertyIsRevoked: String
@available(macOS 10.9, *)
let SKReceiptPropertyIsVolumePurchase: String
