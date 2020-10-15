
@available(tvOS 13.0, *)
class BGTask : NSObject {
  var identifier: String { get }
  var expirationHandler: (() -> Void)?
  func setTaskCompleted(success: Bool)
}
@available(tvOS 13.0, *)
class BGProcessingTask : BGTask {
}
@available(tvOS 13.0, *)
class BGAppRefreshTask : BGTask {
}
