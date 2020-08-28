
@available(watchOS 4.0, *)
class HMCalendarEvent : HMTimeEvent, NSCopying, NSMutableCopying {
  init(fire fireDateComponents: DateComponents)
  var fireDateComponents: DateComponents { get }
}
@available(watchOS 4.0, *)
class HMMutableCalendarEvent : HMCalendarEvent {
}
