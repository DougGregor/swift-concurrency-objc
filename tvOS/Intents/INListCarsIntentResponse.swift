
@available(tvOS 14.0, *)
enum INListCarsIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(tvOS 14.0, *)
class INListCarsIntentResponse : INIntentResponse {
  init(code: INListCarsIntentResponseCode, userActivity: NSUserActivity?)
  var code: INListCarsIntentResponseCode { get }
  var cars: [INCar]?
}
