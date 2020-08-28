
@available(macOS 10.15, *)
enum MLTaskState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case suspended
  case running
  case cancelling
  case completed
  case failed
}
@available(macOS 10.15, *)
class MLTask : NSObject {
  var taskIdentifier: String { get }
  var state: MLTaskState { get }
  var error: Error? { get }
  func resume()
  func cancel()
}
