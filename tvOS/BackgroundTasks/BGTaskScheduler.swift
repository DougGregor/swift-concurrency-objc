
extension BGTaskScheduler {
  @available(tvOS 13.0, *)
  class let errorDomain: String
  @available(tvOS 13.0, *)
  struct Error : _BridgedStoredNSError {
    let _nsError: NSError
    init(_nsError: NSError)
    static var errorDomain: String { get }
    static var unavailable: BGTaskScheduler.Error.Code { get }
    static var tooManyPendingTaskRequests: BGTaskScheduler.Error.Code { get }
    static var notPermitted: BGTaskScheduler.Error.Code { get }
  }
}
@available(tvOS 13.0, *)
class BGTaskScheduler : NSObject {
  class var shared: BGTaskScheduler { get }
  func register(forTaskWithIdentifier identifier: String, using queue: DispatchQueue?, launchHandler: @escaping (BGTask) -> Void) -> Bool
  func submit(_ taskRequest: BGTaskRequest) throws
  func cancel(taskRequestWithIdentifier identifier: String)
  func cancelAllTaskRequests()
  func getPendingTaskRequests(completionHandler: @escaping ([BGTaskRequest]) -> Void)
}
