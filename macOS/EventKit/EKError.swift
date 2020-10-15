
@available(macOS 10.8, *)
let EKErrorDomain: String
struct EKError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var eventNotMutable: EKError.Code { get }
  static var noCalendar: EKError.Code { get }
  static var noStartDate: EKError.Code { get }
  static var noEndDate: EKError.Code { get }
  static var datesInverted: EKError.Code { get }
  static var internalFailure: EKError.Code { get }
  static var calendarReadOnly: EKError.Code { get }
  static var durationGreaterThanRecurrence: EKError.Code { get }
  static var alarmGreaterThanRecurrence: EKError.Code { get }
  static var startDateTooFarInFuture: EKError.Code { get }
  static var startDateCollidesWithOtherOccurrence: EKError.Code { get }
  static var objectBelongsToDifferentStore: EKError.Code { get }
  static var invitesCannotBeMoved: EKError.Code { get }
  static var invalidSpan: EKError.Code { get }
  static var calendarHasNoSource: EKError.Code { get }
  static var calendarSourceCannotBeModified: EKError.Code { get }
  static var calendarIsImmutable: EKError.Code { get }
  static var sourceDoesNotAllowCalendarAddDelete: EKError.Code { get }
  static var recurringReminderRequiresDueDate: EKError.Code { get }
  static var structuredLocationsNotSupported: EKError.Code { get }
  static var reminderLocationsNotSupported: EKError.Code { get }
  static var alarmProximityNotSupported: EKError.Code { get }
  static var calendarDoesNotAllowEvents: EKError.Code { get }
  static var calendarDoesNotAllowReminders: EKError.Code { get }
  static var sourceDoesNotAllowReminders: EKError.Code { get }
  static var sourceDoesNotAllowEvents: EKError.Code { get }
  static var priorityIsInvalid: EKError.Code { get }
  static var invalidEntityType: EKError.Code { get }
  static var procedureAlarmsNotMutable: EKError.Code { get }
  static var eventStoreNotAuthorized: EKError.Code { get }
  static var osNotSupported: EKError.Code { get }
  static var invalidInviteReplyCalendar: EKError.Code { get }
  static var notificationsCollectionFlagNotSet: EKError.Code { get }
  static var sourceMismatch: EKError.Code { get }
  static var notificationCollectionMismatch: EKError.Code { get }
  static var notificationSavedWithoutCollection: EKError.Code { get }
  static var last: EKError.Code { get }
}
