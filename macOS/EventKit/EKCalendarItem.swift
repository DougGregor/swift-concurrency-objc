
@available(macOS 10.8, *)
class EKCalendarItem : EKObject {
  var calendar: EKCalendar!
  @available(macOS 10.8, *)
  var calendarItemIdentifier: String { get }
  @available(macOS 10.8, *)
  var calendarItemExternalIdentifier: String! { get }
  var title: String!
  var location: String?
  var notes: String?
  @available(macOS 10.8, *)
  var url: URL?
  var lastModifiedDate: Date? { get }
  @available(macOS 10.8, *)
  var creationDate: Date? { get }
  @available(macOS 10.8, *)
  var timeZone: TimeZone?
  @available(macOS 10.8, *)
  var hasAlarms: Bool { get }
  @available(macOS 10.8, *)
  var hasRecurrenceRules: Bool { get }
  @available(macOS 10.8, *)
  var hasAttendees: Bool { get }
  @available(macOS 10.8, *)
  var hasNotes: Bool { get }
  var attendees: [EKParticipant]? { get }
  var alarms: [EKAlarm]?
  func addAlarm(_ alarm: EKAlarm)
  func removeAlarm(_ alarm: EKAlarm)
  @available(macOS 10.8, *)
  var recurrenceRules: [EKRecurrenceRule]?
  func addRecurrenceRule(_ rule: EKRecurrenceRule)
  func removeRecurrenceRule(_ rule: EKRecurrenceRule)
}
