
@available(tvOS 10.0, *)
enum INSetRadioStationIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureNotSubscribed
}
@available(tvOS 10.0, *)
class INSetRadioStationIntentResponse : INIntentResponse {
  init(code: INSetRadioStationIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSetRadioStationIntentResponseCode { get }
}
