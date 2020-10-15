
@available(macOS 10.8, *)
class EKCalendar : EKObject {
  @available(macOS 10.8, *)
  /*not inherited*/ init(for entityType: EKEntityType, eventStore: EKEventStore)
  var source: EKSource!
  @available(macOS 10.8, *)
  var calendarIdentifier: String { get }
  var title: String
  var type: EKCalendarType { get }
  var allowsContentModifications: Bool { get }
  @available(macOS 10.8, *)
  var isSubscribed: Bool { get }
  @available(macOS 10.8, *)
  var isImmutable: Bool { get }
  @available(macOS 10.15, *)
  var cgColor: CGColor!
  var supportedEventAvailabilities: EKCalendarEventAvailabilityMask { get }
  @available(macOS 10.8, *)
  var allowedEntityTypes: EKEntityMask { get }
}
