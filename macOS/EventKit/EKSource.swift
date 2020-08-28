
@available(macOS 10.8, *)
class EKSource : EKObject {
  var sourceIdentifier: String { get }
  var sourceType: EKSourceType { get }
  var title: String { get }
  @available(macOS 10.8, *)
  func calendars(for entityType: EKEntityType) -> Set<EKCalendar>
}
