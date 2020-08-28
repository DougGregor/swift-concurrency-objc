
@available(macOS 10.8, *)
class EKAlarm : EKObject, NSCopying {
  /*not inherited*/ init(absoluteDate date: Date)
  /*not inherited*/ init(relativeOffset offset: TimeInterval)
  var relativeOffset: TimeInterval
  var absoluteDate: Date?
  @NSCopying var structuredLocation: EKStructuredLocation?
  var proximity: EKAlarmProximity
  @available(macOS 10.8, *)
  var type: EKAlarmType { get }
  @available(macOS 10.8, *)
  var emailAddress: String?
  @available(macOS 10.8, *)
  var soundName: String?
}
