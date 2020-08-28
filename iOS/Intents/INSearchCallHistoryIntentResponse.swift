
@available(iOS 10.0, *)
enum INSearchCallHistoryIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case continueInApp
  case failure
  case failureRequiringAppLaunch
  case failureAppConfigurationRequired
  @available(iOS 11.0, *)
  case inProgress
  @available(iOS 11.0, *)
  case success
}
@available(iOS 10.0, *)
class INSearchCallHistoryIntentResponse : INIntentResponse {
  init(code: INSearchCallHistoryIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSearchCallHistoryIntentResponseCode { get }
  @available(iOS 11.0, *)
  var callRecords: [INCallRecord]?
}
