
@available(watchOS 6.0, *)
enum INGetReservationDetailsIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(watchOS 6.0, *)
class INGetReservationDetailsIntentResponse : INIntentResponse {
  init(code: INGetReservationDetailsIntentResponseCode, userActivity: NSUserActivity?)
  var code: INGetReservationDetailsIntentResponseCode { get }
  var reservations: [INReservation]?
}
