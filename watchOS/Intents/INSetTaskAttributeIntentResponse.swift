
@available(watchOS 4.0, *)
enum INSetTaskAttributeIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(watchOS 4.0, *)
class INSetTaskAttributeIntentResponse : INIntentResponse {
  init(code: INSetTaskAttributeIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSetTaskAttributeIntentResponseCode { get }
  @NSCopying var modifiedTask: INTask?
}
