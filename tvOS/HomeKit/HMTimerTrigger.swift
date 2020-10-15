
@available(tvOS 10.0, *)
class HMTimerTrigger : HMTrigger {
  var fireDate: Date { get }
  var timeZone: TimeZone? { get }
  var recurrence: DateComponents? { get }
  var recurrenceCalendar: Calendar? { get }
}
