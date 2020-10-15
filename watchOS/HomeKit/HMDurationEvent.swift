
@available(watchOS 4.0, *)
class HMDurationEvent : HMTimeEvent, NSCopying, NSMutableCopying {
  init(duration: TimeInterval)
  var duration: TimeInterval { get }
}
@available(watchOS 4.0, *)
class HMMutableDurationEvent : HMDurationEvent {
}
