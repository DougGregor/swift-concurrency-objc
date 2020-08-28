
class Timer : NSObject {
  /*not inherited*/ init(timeInterval ti: TimeInterval, invocation: NSInvocation, repeats yesOrNo: Bool)
  class func scheduledTimer(timeInterval ti: TimeInterval, invocation: NSInvocation, repeats yesOrNo: Bool) -> Timer
  /*not inherited*/ init(timeInterval ti: TimeInterval, target aTarget: Any, selector aSelector: Selector, userInfo: Any?, repeats yesOrNo: Bool)
  class func scheduledTimer(timeInterval ti: TimeInterval, target aTarget: Any, selector aSelector: Selector, userInfo: Any?, repeats yesOrNo: Bool) -> Timer
  @available(tvOS 10.0, *)
  /*not inherited*/ init(timeInterval interval: TimeInterval, repeats: Bool, block: @escaping (Timer) -> Void)
  @available(tvOS 10.0, *)
  class func scheduledTimer(withTimeInterval interval: TimeInterval, repeats: Bool, block: @escaping (Timer) -> Void) -> Timer
  @available(tvOS 10.0, *)
  convenience init(fire date: Date, interval: TimeInterval, repeats: Bool, block: @escaping (Timer) -> Void)
  init(fireAt date: Date, interval ti: TimeInterval, target t: Any, selector s: Selector, userInfo ui: Any?, repeats rep: Bool)
  func fire()
  var fireDate: Date
  var timeInterval: TimeInterval { get }
  @available(tvOS 9.0, *)
  var tolerance: TimeInterval
  func invalidate()
  var isValid: Bool { get }
  var userInfo: Any? { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Timer {
  static func publish(every interval: TimeInterval, tolerance: TimeInterval? = nil, on runLoop: RunLoop, in mode: RunLoop.Mode, options: RunLoop.SchedulerOptions? = nil) -> Timer.TimerPublisher
  final class TimerPublisher : ConnectablePublisher {
    let interval: TimeInterval
    let tolerance: TimeInterval?
    let runLoop: RunLoop
    let mode: RunLoop.Mode
    let options: RunLoop.SchedulerOptions?
    lazy var routingSubscription: Timer.TimerPublisher.RoutingSubscription
    var $__lazy_storage_$_routingSubscription: Timer.TimerPublisher.RoutingSubscription?
    var isConnected: Bool { get }
    init(interval: TimeInterval, tolerance: TimeInterval? = nil, runLoop: RunLoop, mode: RunLoop.Mode, options: RunLoop.SchedulerOptions? = nil)
    class RoutingSubscription : Subscription, Subscriber, CustomStringConvertible, CustomReflectable, CustomPlaygroundDisplayConvertible {
      typealias ErasedSubscriber = AnySubscriber<Timer.TimerPublisher.Output, Timer.TimerPublisher.RoutingSubscription.Failure>
      let lock: Lock
      var inner: Timer.TimerPublisher.Inner<Timer.TimerPublisher.RoutingSubscription>!
      var subscribers: [Timer.TimerPublisher.RoutingSubscription.ErasedSubscriber]
      var _lockedIsConnected: Bool
      var isConnected: Bool
      init(parent: Timer.TimerPublisher)
      func addSubscriber<S>(_ sub: S) where S : Subscriber, S.Failure == Timer.TimerPublisher.RoutingSubscription.Failure, S.Input == Timer.TimerPublisher.Output
    }
    typealias Parent = Timer.TimerPublisher
    final class Inner<Downstream> : NSObject, Subscription, CustomReflectable, CustomPlaygroundDisplayConvertible where Downstream : Subscriber, Downstream.Failure == Never, Downstream.Input == Date {
      lazy var timer: Timer?
      var $__lazy_storage_$_timer: Timer??
      let lock: Lock
      var downstream: Downstream?
      var parent: Timer.TimerPublisher.Parent?
      var started: Bool
      var demand: Subscribers.Demand
      init(_ parent: Timer.TimerPublisher.Parent, _ downstream: Downstream)
      func enqueue()
      @objc func timerFired(arg: Any)
    }
  }
}
