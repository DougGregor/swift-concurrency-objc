
@available(iOS 6.0, *)
class EKReminder : EKCalendarItem {
  /*not inherited*/ init(eventStore: EKEventStore)
  var startDateComponents: DateComponents?
  var dueDateComponents: DateComponents?
  var isCompleted: Bool
  var completionDate: Date?
  var priority: Int
}
