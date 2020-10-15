
@available(macOS 10.5, *)
class Operation : NSObject {
  func start()
  func main()
  var isCancelled: Bool { get }
  func cancel()
  var isExecuting: Bool { get }
  var isFinished: Bool { get }
  var isConcurrent: Bool { get }
  @available(macOS 10.8, *)
  var isAsynchronous: Bool { get }
  var isReady: Bool { get }
  func addDependency(_ op: Operation)
  func removeDependency(_ op: Operation)
  var dependencies: [Operation] { get }
  var queuePriority: Operation.QueuePriority
  @available(macOS 10.6, *)
  var completionBlock: (() -> Void)?
  @available(macOS 10.6, *)
  func waitUntilFinished()
  @available(macOS, introduced: 10.6, deprecated: 10.10, message: "Not supported")
  var threadPriority: Double
  @available(macOS 10.10, *)
  var qualityOfService: QualityOfService
  @available(macOS 10.10, *)
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
@available(macOS 10.6, *)
class BlockOperation : Operation {
  convenience init(block: @escaping () -> Void)
  func addExecutionBlock(_ block: @escaping () -> Void)
  var executionBlocks: [@convention(block) () -> Void] { get }
}
extension NSExceptionName {
  @available(macOS 10.5, *)
  static let invocationOperationVoidResultException: NSExceptionName
  @available(macOS 10.5, *)
  static let invocationOperationCancelledException: NSExceptionName
}
extension OperationQueue {
  class let defaultMaxConcurrentOperationCount: Int
}
@available(macOS 10.5, *)
class OperationQueue : NSObject, ProgressReporting {
  func addOperation(_ op: Operation)
  @available(macOS 10.6, *)
  func addOperations(_ ops: [Operation], waitUntilFinished wait: Bool)
  @available(macOS 10.6, *)
  func addOperation(_ block: @escaping () -> Void)
  @available(macOS 10.15, *)
  func addBarrierBlock(_ barrier: @escaping () -> Void)
  var maxConcurrentOperationCount: Int
  var isSuspended: Bool
  @available(macOS 10.6, *)
  var name: String?
  @available(macOS 10.10, *)
  var qualityOfService: QualityOfService
  @available(macOS 10.10, *)
  unowned(unsafe) var underlyingQueue: @sil_unmanaged DispatchQueue?
  func cancelAllOperations()
  func waitUntilAllOperationsAreFinished()
  @available(macOS 10.6, *)
  class var current: OperationQueue? { get }
  @available(macOS 10.6, *)
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
  @available(macOS, introduced: 10.5, deprecated: 100000, message: "access to operations is inherently a race condition, it should not be used. For barrier style behaviors please use addBarrierBlock: instead")
  var operations: [Operation] { get }
  @available(macOS, introduced: 10.6, deprecated: 100000)
  var operationCount: Int { get }
}
