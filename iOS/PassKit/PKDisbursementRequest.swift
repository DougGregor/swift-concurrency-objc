
extension PKDisbursementRequest {
  enum Schedule : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case oneTime
    case future
  }
}
class PKDisbursementRequest : NSObject {
  @available(iOS 12.2, *)
  @NSCopying var amount: NSDecimalNumber
  @available(iOS 12.2, *)
  var currencyCode: String?
  @available(iOS 12.2, *)
  var countryCode: String
  @available(iOS 12.2, *)
  var requestSchedule: PKDisbursementRequest.Schedule
  @available(iOS 12.2, *)
  var summaryItems: [PKPaymentSummaryItem]?
}
