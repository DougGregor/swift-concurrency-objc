
@available(watchOS 2.0, *)
class EKAlarm : EKObject, NSCopying {
  /*not inherited*/ init(absoluteDate date: Date)
  /*not inherited*/ init(relativeOffset offset: TimeInterval)
  var relativeOffset: TimeInterval
  var absoluteDate: Date?
  @NSCopying var structuredLocation: EKStructuredLocation?
  var proximity: EKAlarmProximity
}
