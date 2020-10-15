
@available(iOS 11.0, *)
class HMDurationEvent : HMTimeEvent, NSCopying, NSMutableCopying {
  init(duration: TimeInterval)
  var duration: TimeInterval { get }
}
@available(iOS 11.0, *)
class HMMutableDurationEvent : HMDurationEvent {
}
