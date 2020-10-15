
@available(tvOS 9.0, *)
class Operation : NSObject {
  func start()
  func main()
  var isCancelled: Bool { get }
  func cancel()
  var isExecuting: Bool { get }
  var isFinished: Bool { get }
  var isConcurrent: Bool { get }
  @available(tvOS 9.0, *)
  var isAsynchronous: Bool { get }
  var isReady: Bool { get }
  func addDependency(_ op: Operation)
  func removeDependency(_ op: Operation)
  var dependencies: [Operation] { get }
  var queuePriority: Operation.QueuePriority
  @available(tvOS 9.0, *)
  var completionBlock: (() -> Void)?
  @available(tvOS 9.0, *)
  func waitUntilFinished()
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Not supported")
  var threadPriority: Double
  @available(tvOS 9.0, *)
  var qualityOfService: QualityOfService
  @available(tvOS 9.0, *)
  var name: String?
}
extension Operation {
  enum QueuePriority : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case veryLow
    case low
    case normal
    case high
    case veryHigh
  }
}
@available(tvOS 9.0, *)
class BlockOperation : Operation {
  convenience init(block: @escaping () -> Void)
  func addExecutionBlock(_ block: @escaping () -> Void)
  var executionBlocks: [@convention(block) () -> Void] { get }
}
extension NSExceptionName {
  @available(tvOS 9.0, *)
  static let invocationOperationVoidResultException: NSExceptionName
  @available(tvOS 9.0, *)
  static let invocationOperationCancelledException: NSExceptionName
}
extension OperationQueue {
  class let defaultMaxConcurrentOperationCount: Int
}
@available(tvOS 9.0, *)
class OperationQueue : NSObject, ProgressReporting {
  func addOperation(_ op: Operation)
  @available(tvOS 9.0, *)
  func addOperations(_ ops: [Operation], waitUntilFinished wait: Bool)
  @available(tvOS 9.0, *)
  func addOperation(_ block: @escaping () -> Void)
  @available(tvOS 13.0, *)
  func addBarrierBlock(_ barrier: @escaping () -> Void)
  var maxConcurrentOperationCount: Int
  var isSuspended: Bool
  @available(tvOS 9.0, *)
  var name: String?
  @available(tvOS 9.0, *)
  var qualityOfService: QualityOfService
  @available(tvOS 9.0, *)
  unowned(unsafe) var underlyingQueue: @sil_unmanaged DispatchQueue?
  func cancelAllOperations()
  func waitUntilAllOperationsAreFinished()
  @available(tvOS 9.0, *)
  class var current: OperationQueue? { get }
  @available(tvOS 9.0, *)
  class var main: OperationQueue { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension OperationQueue : Scheduler {
  final class DelayReadyOperation : Operation, Cancellable {
    static var readySchedulingQueue: DispatchQueue
    var action: (() -> Void)?
    var readyFromAfter: Bool
    init(_ action: @escaping () -> Void, after: OperationQueue.SchedulerTimeType)
    func becomeReady()
  }
}
extension OperationQueue {
  @available(tvOS, introduced: 9.0, deprecated: 100000, message: "access to operations is inherently a race condition, it should not be used. For barrier style behaviors please use addBarrierBlock: instead")
  var operations: [Operation] { get }
  @available(tvOS, introduced: 9.0, deprecated: 100000)
  var operationCount: Int { get }
}
