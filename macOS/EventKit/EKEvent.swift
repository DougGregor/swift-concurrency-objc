
enum EKEventAvailability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notSupported
  case busy
  case free
  case tentative
  case unavailable
}
enum EKEventStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case confirmed
  case tentative
  case canceled
}
@available(macOS 10.8, *)
class EKEvent : EKCalendarItem {
  /*not inherited*/ init(eventStore: EKEventStore)
  var eventIdentifier: String! { get }
  var isAllDay: Bool
  var startDate: Date!
  var endDate: Date!
  @available(macOS 10.11, *)
  @NSCopying var structuredLocation: EKStructuredLocation?
  func compareStartDate(with other: EKEvent) -> ComparisonResult
  var organizer: EKParticipant? { get }
  var availability: EKEventAvailability
  var status: EKEventStatus { get }
  var isDetached: Bool { get }
  @available(macOS 10.8, *)
  var occurrenceDate: Date! { get }
  @available(macOS 10.11, *)
  var birthdayContactIdentifier: String? { get }
  @available(macOS, introduced: 10.8, deprecated: 10.11, message: "Use birthdayContactIdentifier instead")
  var birthdayPersonUniqueID: String? { get }
}
