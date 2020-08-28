
@available(tvOS 11.0, *)
enum INAppendToNoteIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureCannotUpdatePasswordProtectedNote
}
@available(tvOS 11.0, *)
class INAppendToNoteIntentResponse : INIntentResponse {
  init(code: INAppendToNoteIntentResponseCode, userActivity: NSUserActivity?)
  var code: INAppendToNoteIntentResponseCode { get }
  @NSCopying var note: INNote?
}
