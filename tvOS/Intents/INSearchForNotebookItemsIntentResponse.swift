
@available(tvOS 11.0, *)
enum INSearchForNotebookItemsIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(tvOS 11.0, *)
class INSearchForNotebookItemsIntentResponse : INIntentResponse {
  init(code: INSearchForNotebookItemsIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSearchForNotebookItemsIntentResponseCode { get }
  var notes: [INNote]?
  var taskLists: [INTaskList]?
  var tasks: [INTask]?
  var sortType: INSortType
}
