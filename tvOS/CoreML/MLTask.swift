
@available(tvOS 14.0, *)
enum MLTaskState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case suspended
  case running
  case cancelling
  case completed
  case failed
}
@available(tvOS 14.0, *)
class MLTask : NSObject {
  var taskIdentifier: String { get }
  var state: MLTaskState { get }
  var error: Error? { get }
  func resume()
  func cancel()
}
