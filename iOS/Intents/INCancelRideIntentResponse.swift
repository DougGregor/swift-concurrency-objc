
@available(iOS 11.0, *)
enum INCancelRideIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case success
  case failure
}
@available(iOS 11.0, *)
class INCancelRideIntentResponse : INIntentResponse {
  init(code: INCancelRideIntentResponseCode, userActivity: NSUserActivity?)
  var code: INCancelRideIntentResponseCode { get }
  @NSCopying var cancellationFee: INCurrencyAmount?
  var cancellationFeeThreshold: DateComponents?
}
