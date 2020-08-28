
@available(watchOS 3.2, *)
enum INSearchForBillsIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureCredentialsUnverified
  case failureBillNotFound
}
@available(watchOS 3.2, *)
class INSearchForBillsIntentResponse : INIntentResponse {
  init(code: INSearchForBillsIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSearchForBillsIntentResponseCode { get }
  var bills: [INBillDetails]?
}
