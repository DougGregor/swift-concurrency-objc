
extension RunLoop.Mode {
  static let `default`: RunLoop.Mode
  @available(watchOS 2.0, *)
  static let common: RunLoop.Mode
}
class RunLoop : NSObject {
  class var current: RunLoop { get }
  @available(watchOS 2.0, *)
  class var main: RunLoop { get }
  var currentMode: RunLoop.Mode? { get }
  func getCFRunLoop() -> CFRunLoop
  func add(_ timer: Timer, forMode mode: RunLoop.Mode)
  func add(_ aPort: Port, forMode mode: RunLoop.Mode)
  func remove(_ aPort: Port, forMode mode: RunLoop.Mode)
  func limitDate(forMode mode: RunLoop.Mode) -> Date?
  func acceptInput(forMode mode: RunLoop.Mode, before limitDate: Date)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension RunLoop : Scheduler {
  @objc func runLoopScheduled(action: _CombineRunLoopAction)
}
extension RunLoop {
  func run()
  func run(until limitDate: Date)
  func run(mode: RunLoop.Mode, before limitDate: Date) -> Bool
  @available(watchOS 3.0, *)
  func perform(inModes modes: [RunLoop.Mode], block: @escaping () -> Void)
  @available(watchOS 3.0, *)
  func perform(_ block: @escaping () -> Void)
}
extension NSObject {
  class func perform(_ aSelector: Selector, with anArgument: Any?, afterDelay delay: TimeInterval, inModes modes: [RunLoop.Mode])
  func perform(_ aSelector: Selector, with anArgument: Any?, afterDelay delay: TimeInterval, inModes modes: [RunLoop.Mode])
  class func perform(_ aSelector: Selector, with anArgument: Any?, afterDelay delay: TimeInterval)
  func perform(_ aSelector: Selector, with anArgument: Any?, afterDelay delay: TimeInterval)
  class func cancelPreviousPerformRequests(withTarget aTarget: Any, selector aSelector: Selector, object anArgument: Any?)
  class func cancelPreviousPerformRequests(withTarget aTarget: Any)
}
extension RunLoop {
  func perform(_ aSelector: Selector, target: Any, argument arg: Any?, order: Int, modes: [RunLoop.Mode])
  func cancelPerform(_ aSelector: Selector, target: Any, argument arg: Any?)
  func cancelPerformSelectors(withTarget target: Any)
}
