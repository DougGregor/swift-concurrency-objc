
@available(iOS 11.0, *)
enum INCreateNoteIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(iOS 11.0, *)
class INCreateNoteIntentResponse : INIntentResponse {
  init(code: INCreateNoteIntentResponseCode, userActivity: NSUserActivity?)
  var code: INCreateNoteIntentResponseCode { get }
  @NSCopying var createdNote: INNote?
}
