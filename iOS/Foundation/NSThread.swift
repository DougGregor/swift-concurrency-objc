
class Thread : NSObject {
  class var current: Thread { get }
  @available(iOS 10.0, *)
  class func detachNewThread(_ block: @escaping () -> Void)
  class func detachNewThreadSelector(_ selector: Selector, toTarget target: Any, with argument: Any?)
  class func isMultiThreaded() -> Bool
  var threadDictionary: NSMutableDictionary { get }
  class func sleep(until date: Date)
  class func sleep(forTimeInterval ti: TimeInterval)
  class func exit()
  class func threadPriority() -> Double
  class func setThreadPriority(_ p: Double) -> Bool
  @available(iOS 4.0, *)
  var threadPriority: Double
  @available(iOS 8.0, *)
  var qualityOfService: QualityOfService
  @available(iOS 2.0, *)
  class var callStackReturnAddresses: [NSNumber] { get }
  @available(iOS 4.0, *)
  class var callStackSymbols: [String] { get }
  @available(iOS 2.0, *)
  var name: String?
  @available(iOS 2.0, *)
  var stackSize: Int
  @available(iOS 2.0, *)
  var isMainThread: Bool { get }
  @available(iOS 2.0, *)
  class var isMainThread: Bool { get }
  @available(iOS 2.0, *)
  class var main: Thread { get }
  @available(iOS 2.0, *)
  convenience init(target: Any, selector: Selector, object argument: Any?)
  @available(iOS 10.0, *)
  convenience init(block: @escaping () -> Void)
  @available(iOS 2.0, *)
  var isExecuting: Bool { get }
  @available(iOS 2.0, *)
  var isFinished: Bool { get }
  @available(iOS 2.0, *)
  var isCancelled: Bool { get }
  @available(iOS 2.0, *)
  func cancel()
  @available(iOS 2.0, *)
  func start()
  @available(iOS 2.0, *)
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
  @available(iOS 2.0, *)
  class func perform(_ aSelector: Selector, on thr: Thread, with arg: Any?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(iOS 2.0, *)
  func perform(_ aSelector: Selector, on thr: Thread, with arg: Any?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(iOS 2.0, *)
  class func perform(_ aSelector: Selector, on thr: Thread, with arg: Any?, waitUntilDone wait: Bool)
  @available(iOS 2.0, *)
  func perform(_ aSelector: Selector, on thr: Thread, with arg: Any?, waitUntilDone wait: Bool)
  @available(iOS 2.0, *)
  class func performSelector(inBackground aSelector: Selector, with arg: Any?)
  @available(iOS 2.0, *)
  func performSelector(inBackground aSelector: Selector, with arg: Any?)
}
