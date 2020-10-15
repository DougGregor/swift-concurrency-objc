
enum EKSpan : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case thisEvent
  case futureEvents
}
typealias EKEventSearchCallback = (EKEvent, UnsafeMutablePointer<ObjCBool>) -> Void
@available(macOS 10.8, *)
class EKEventStore : NSObject {
  @available(macOS 10.9, *)
  class func authorizationStatus(for entityType: EKEntityType) -> EKAuthorizationStatus
  @available(macOS 10.11, *)
  init(sources: [EKSource])
  @available(macOS 10.9, *)
  func requestAccess(to entityType: EKEntityType, completion: @escaping EKEventStoreRequestAccessCompletionHandler)
  var eventStoreIdentifier: String { get }
  @available(macOS 10.11, *)
  var delegateSources: [EKSource] { get }
  @available(macOS 10.8, *)
  var sources: [EKSource] { get }
  @available(macOS 10.8, *)
  func source(withIdentifier identifier: String) -> EKSource?
  @available(macOS 10.8, *)
  func calendars(for entityType: EKEntityType) -> [EKCalendar]
  var defaultCalendarForNewEvents: EKCalendar? { get }
  @available(macOS 10.8, *)
  func defaultCalendarForNewReminders() -> EKCalendar?
  @available(macOS 10.8, *)
  func calendar(withIdentifier identifier: String) -> EKCalendar?
  @available(macOS 10.8, *)
  func saveCalendar(_ calendar: EKCalendar, commit: Bool) throws
  @available(macOS 10.8, *)
  func removeCalendar(_ calendar: EKCalendar, commit: Bool) throws
  @available(macOS 10.8, *)
  func calendarItem(withIdentifier identifier: String) -> EKCalendarItem?
  @available(macOS 10.8, *)
  func calendarItems(withExternalIdentifier externalIdentifier: String) -> [EKCalendarItem]
  @available(macOS 10.14, *)
  func save(_ event: EKEvent, span: EKSpan) throws
  @available(macOS 10.14, *)
  func remove(_ event: EKEvent, span: EKSpan) throws
  @available(macOS 10.8, *)
  func save(_ event: EKEvent, span: EKSpan, commit: Bool) throws
  @available(macOS 10.8, *)
  func remove(_ event: EKEvent, span: EKSpan, commit: Bool) throws
  func event(withIdentifier identifier: String) -> EKEvent?
  func events(matching predicate: NSPredicate) -> [EKEvent]
  func enumerateEvents(matching predicate: NSPredicate, using block: @escaping EKEventSearchCallback)
  func predicateForEvents(withStart startDate: Date, end endDate: Date, calendars: [EKCalendar]?) -> NSPredicate
  @available(macOS 10.8, *)
  func save(_ reminder: EKReminder, commit: Bool) throws
  @available(macOS 10.8, *)
  func remove(_ reminder: EKReminder, commit: Bool) throws
  @available(macOS 10.8, *)
  func fetchReminders(matching predicate: NSPredicate, completion: @escaping ([EKReminder]?) -> Void) -> Any
  @available(macOS 10.8, *)
  func cancelFetchRequest(_ fetchIdentifier: Any)
  @available(macOS 10.8, *)
  func predicateForReminders(in calendars: [EKCalendar]?) -> NSPredicate
  @available(macOS 10.8, *)
  func predicateForIncompleteReminders(withDueDateStarting startDate: Date?, ending endDate: Date?, calendars: [EKCalendar]?) -> NSPredicate
  @available(macOS 10.8, *)
  func predicateForCompletedReminders(withCompletionDateStarting startDate: Date?, ending endDate: Date?, calendars: [EKCalendar]?) -> NSPredicate
  @available(macOS 10.8, *)
  func commit() throws
  @available(macOS 10.8, *)
  func reset()
  @available(macOS 10.8, *)
  func refreshSourcesIfNecessary()
}
typealias EKEventStoreRequestAccessCompletionHandler = (Bool, Error?) -> Void
extension NSNotification.Name {
  @available(macOS 10.8, *)
  static let EKEventStoreChanged: NSNotification.Name
}
