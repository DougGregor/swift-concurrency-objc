
@available(iOS 10.3, *)
enum INActivateCarSignalIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(iOS 10.3, *)
class INActivateCarSignalIntentResponse : INIntentResponse {
  init(code: INActivateCarSignalIntentResponseCode, userActivity: NSUserActivity?)
  var code: INActivateCarSignalIntentResponseCode { get }
  var signals: INCarSignalOptions
}
