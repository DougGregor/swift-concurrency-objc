
@available(watchOS 3.2, *)
enum INSearchCallHistoryIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case continueInApp
  case failure
  case failureRequiringAppLaunch
  case failureAppConfigurationRequired
  @available(watchOS 4.0, *)
  case inProgress
  @available(watchOS 4.0, *)
  case success
}
@available(watchOS 3.2, *)
class INSearchCallHistoryIntentResponse : INIntentResponse {
  init(code: INSearchCallHistoryIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSearchCallHistoryIntentResponseCode { get }
  @available(watchOS 4.0, *)
  var callRecords: [INCallRecord]?
}
