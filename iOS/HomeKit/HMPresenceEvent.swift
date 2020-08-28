
@available(iOS 11.0, *)
class HMPresenceEvent : HMEvent, NSCopying, NSMutableCopying {
  init(presenceEventType: HMPresenceEventType, presenceUserType: HMPresenceEventUserType)
  var presenceEventType: HMPresenceEventType { get }
  var presenceUserType: HMPresenceEventUserType { get }
}
@available(iOS 11.0, *)
class HMMutablePresenceEvent : HMPresenceEvent {
}
