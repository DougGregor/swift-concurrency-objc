
class Thread : NSObject {
  class var current: Thread { get }
  @available(macOS 10.12, *)
  class func detachNewThread(_ block: @escaping () -> Void)
  class func detachNewThreadSelector(_ selector: Selector, toTarget target: Any, with argument: Any?)
  class func isMultiThreaded() -> Bool
  var threadDictionary: NSMutableDictionary { get }
  class func sleep(until date: Date)
  class func sleep(forTimeInterval ti: TimeInterval)
  class func exit()
  class func threadPriority() -> Double
  class func setThreadPriority(_ p: Double) -> Bool
  @available(macOS 10.6, *)
  var threadPriority: Double
  @available(macOS 10.10, *)
  var qualityOfService: QualityOfService
  @available(macOS 10.5, *)
  class var callStackReturnAddresses: [NSNumber] { get }
  @available(macOS 10.6, *)
  class var callStackSymbols: [String] { get }
  @available(macOS 10.5, *)
  var name: String?
  @available(macOS 10.5, *)
  var stackSize: Int
  @available(macOS 10.5, *)
  var isMainThread: Bool { get }
  @available(macOS 10.5, *)
  class var isMainThread: Bool { get }
  @available(macOS 10.5, *)
  class var main: Thread { get }
  @available(macOS 10.5, *)
  convenience init(target: Any, selector: Selector, object argument: Any?)
  @available(macOS 10.12, *)
  convenience init(block: @escaping () -> Void)
  @available(macOS 10.5, *)
  var isExecuting: Bool { get }
  @available(macOS 10.5, *)
  var isFinished: Bool { get }
  @available(macOS 10.5, *)
  var isCancelled: Bool { get }
  @available(macOS 10.5, *)
  func cancel()
  @available(macOS 10.5, *)
  func start()
  @available(macOS 10.5, *)
  func main()
}
extension NSNotification.Name {
  static let NSWillBecomeMultiThreaded: NSNotification.Name
  static let NSDidBecomeSingleThreaded: NSNotification.Name
  static let NSThreadWillExit: NSNotification.Name
}
extension NSObject {
  class func performSelector(onMainThread aSelector: Selector, with arg: Any?, waitUntilDone wait: Bool, modes array: [String]?)
  func performSelector(onMainThread aSelector: Selector, with arg: Any?, waitUntilDone wait: Bool, modes array: [String]?)
  class func performSelector(onMainThread aSelector: Selector, with arg: Any?, waitUntilDone wait: Bool)
  func performSelector(onMainThread aSelector: Selector, with arg: Any?, waitUntilDone wait: Bool)
  @available(macOS 10.5, *)
  class func perform(_ aSelector: Selector, on thr: Thread, with arg: Any?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(macOS 10.5, *)
  func perform(_ aSelector: Selector, on thr: Thread, with arg: Any?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(macOS 10.5, *)
  class func perform(_ aSelector: Selector, on thr: Thread, with arg: Any?, waitUntilDone wait: Bool)
  @available(macOS 10.5, *)
  func perform(_ aSelector: Selector, on thr: Thread, with arg: Any?, waitUntilDone wait: Bool)
  @available(macOS 10.5, *)
  class func performSelector(inBackground aSelector: Selector, with arg: Any?)
  @available(macOS 10.5, *)
  func performSelector(inBackground aSelector: Selector, with arg: Any?)
}
