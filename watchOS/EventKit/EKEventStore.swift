
enum EKSpan : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case thisEvent
  case futureEvents
}
typealias EKEventSearchCallback = (EKEvent, UnsafeMutablePointer<ObjCBool>) -> Void
@available(watchOS 2.0, *)
class EKEventStore : NSObject {
  @available(watchOS 2.0, *)
  class func authorizationStatus(for entityType: EKEntityType) -> EKAuthorizationStatus
  @available(watchOS 2.0, *)
  func requestAccess(to entityType: EKEntityType, completion: @escaping EKEventStoreRequestAccessCompletionHandler)
  var eventStoreIdentifier: String { get }
  @available(watchOS 5.0, *)
  var delegateSources: [EKSource] { get }
  @available(watchOS 2.0, *)
  var sources: [EKSource] { get }
  @available(watchOS 2.0, *)
  func source(withIdentifier identifier: String) -> EKSource?
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  var calendars: [EKCalendar] { get }
  @available(watchOS 2.0, *)
  func calendars(for entityType: EKEntityType) -> [EKCalendar]
  var defaultCalendarForNewEvents: EKCalendar? { get }
  @available(watchOS 2.0, *)
  func defaultCalendarForNewReminders() -> EKCalendar?
  @available(watchOS 2.0, *)
  func calendar(withIdentifier identifier: String) -> EKCalendar?
  @available(watchOS 2.0, *)
  func calendarItem(withIdentifier identifier: String) -> EKCalendarItem?
  @available(watchOS 2.0, *)
  func calendarItems(withExternalIdentifier externalIdentifier: String) -> [EKCalendarItem]
  func event(withIdentifier identifier: String) -> EKEvent?
  func events(matching predicate: NSPredicate) -> [EKEvent]
  func enumerateEvents(matching predicate: NSPredicate, using block: @escaping EKEventSearchCallback)
  func predicateForEvents(withStart startDate: Date, end endDate: Date, calendars: [EKCalendar]?) -> NSPredicate
  @available(watchOS 2.0, *)
  func fetchReminders(matching predicate: NSPredicate, completion: @escaping ([EKReminder]?) -> Void) -> Any
  @available(watchOS 2.0, *)
  func cancelFetchRequest(_ fetchIdentifier: Any)
  @available(watchOS 2.0, *)
  func predicateForReminders(in calendars: [EKCalendar]?) -> NSPredicate
  @available(watchOS 2.0, *)
  func predicateForIncompleteReminders(withDueDateStarting startDate: Date?, ending endDate: Date?, calendars: [EKCalendar]?) -> NSPredicate
  @available(watchOS 2.0, *)
  func predicateForCompletedReminders(withCompletionDateStarting startDate: Date?, ending endDate: Date?, calendars: [EKCalendar]?) -> NSPredicate
  @available(watchOS 2.0, *)
  func reset()
}
typealias EKEventStoreRequestAccessCompletionHandler = (Bool, Error?) -> Void
extension NSNotification.Name {
  @available(watchOS 2.0, *)
  static let EKEventStoreChanged: NSNotification.Name
}
