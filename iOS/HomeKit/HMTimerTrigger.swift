
@available(iOS 8.0, *)
class HMTimerTrigger : HMTrigger {
  init(name: String, fireDate: Date, timeZone: TimeZone?, recurrence: DateComponents?, recurrenceCalendar: Calendar?)
  var fireDate: Date { get }
  var timeZone: TimeZone? { get }
  var recurrence: DateComponents? { get }
  var recurrenceCalendar: Calendar? { get }
  func updateFireDate(_ fireDate: Date, completionHandler completion: @escaping (Error?) -> Void)
  func updateFireDate(_ fireDate: Date) async throws
  func updateTimeZone(_ timeZone: TimeZone?, completionHandler completion: @escaping (Error?) -> Void)
  func updateTimeZone(_ timeZone: TimeZone?) async throws
  func updateRecurrence(_ recurrence: DateComponents?, completionHandler completion: @escaping (Error?) -> Void)
  func updateRecurrence(_ recurrence: DateComponents?) async throws
}
