
@available(tvOS 11.0, *)
class HMCalendarEvent : HMTimeEvent, NSCopying, NSMutableCopying {
  init(fire fireDateComponents: DateComponents)
  var fireDateComponents: DateComponents { get }
}
@available(tvOS 11.0, *)
class HMMutableCalendarEvent : HMCalendarEvent {
}
