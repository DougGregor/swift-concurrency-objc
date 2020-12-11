
enum EKSpan : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case thisEvent
  case futureEvents
}
typealias EKEventSearchCallback = (EKEvent, UnsafeMutablePointer<ObjCBool>) -> Void
@available(iOS 4.0, *)
class EKEventStore : NSObject {
  @available(iOS 6.0, *)
  class func authorizationStatus(for entityType: EKEntityType) -> EKAuthorizationStatus
  @available(iOS 6.0, *)
  func requestAccess(to entityType: EKEntityType, completion: @escaping EKEventStoreRequestAccessCompletionHandler)
  @available(iOS 6.0, *)
  func requestAccess(to entityType: EKEntityType) async throws -> Bool
  var eventStoreIdentifier: String { get }
  @available(iOS 12.0, *)
  var delegateSources: [EKSource] { get }
  @available(iOS 5.0, *)
  var sources: [EKSource] { get }
  @available(iOS 5.0, *)
  func source(withIdentifier identifier: String) -> EKSource?
  @available(iOS 6.0, *)
  func calendars(for entityType: EKEntityType) -> [EKCalendar]
  var defaultCalendarForNewEvents: EKCalendar? { get }
  @available(iOS 6.0, *)
  func defaultCalendarForNewReminders() -> EKCalendar?
  @available(iOS 5.0, *)
  func calendar(withIdentifier identifier: String) -> EKCalendar?
  @available(iOS 5.0, *)
  func saveCalendar(_ calendar: EKCalendar, commit: Bool) throws
  @available(iOS 5.0, *)
  func removeCalendar(_ calendar: EKCalendar, commit: Bool) throws
  @available(iOS 6.0, *)
  func calendarItem(withIdentifier identifier: String) -> EKCalendarItem?
  @available(iOS 6.0, *)
  func calendarItems(withExternalIdentifier externalIdentifier: String) -> [EKCalendarItem]
  @available(iOS 4.0, *)
  func save(_ event: EKEvent, span: EKSpan) throws
  @available(iOS 4.0, *)
  func remove(_ event: EKEvent, span: EKSpan) throws
  @available(iOS 5.0, *)
  func save(_ event: EKEvent, span: EKSpan, commit: Bool) throws
  @available(iOS 5.0, *)
  func remove(_ event: EKEvent, span: EKSpan, commit: Bool) throws
  func event(withIdentifier identifier: String) -> EKEvent?
  func events(matching predicate: NSPredicate) -> [EKEvent]
  func enumerateEvents(matching predicate: NSPredicate, using block: @escaping EKEventSearchCallback)
  func predicateForEvents(withStart startDate: Date, end endDate: Date, calendars: [EKCalendar]?) -> NSPredicate
  @available(iOS 6.0, *)
  func save(_ reminder: EKReminder, commit: Bool) throws
  @available(iOS 6.0, *)
  func remove(_ reminder: EKReminder, commit: Bool) throws
  @available(iOS 6.0, *)
  func fetchReminders(matching predicate: NSPredicate, completion: @escaping ([EKReminder]?) -> Void) -> Any
  @available(iOS 6.0, *)
  func cancelFetchRequest(_ fetchIdentifier: Any)
  @available(iOS 6.0, *)
  func predicateForReminders(in calendars: [EKCalendar]?) -> NSPredicate
  @available(iOS 6.0, *)
  func predicateForIncompleteReminders(withDueDateStarting startDate: Date?, ending endDate: Date?, calendars: [EKCalendar]?) -> NSPredicate
  @available(iOS 6.0, *)
  func predicateForCompletedReminders(withCompletionDateStarting startDate: Date?, ending endDate: Date?, calendars: [EKCalendar]?) -> NSPredicate
  @available(iOS 5.0, *)
  func commit() throws
  @available(iOS 5.0, *)
  func reset()
  @available(iOS 5.0, *)
  func refreshSourcesIfNecessary()
}
typealias EKEventStoreRequestAccessCompletionHandler = (Bool, Error?) -> Void
extension NSNotification.Name {
  @available(iOS 4.0, *)
  static let EKEventStoreChanged: NSNotification.Name
}
