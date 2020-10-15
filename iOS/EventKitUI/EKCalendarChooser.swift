
enum EKCalendarChooserSelectionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case single
  case multiple
}
enum EKCalendarChooserDisplayStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case allCalendars
  case writableCalendarsOnly
}
class EKCalendarChooser : UIViewController {
  init(selectionStyle: EKCalendarChooserSelectionStyle, displayStyle: EKCalendarChooserDisplayStyle, eventStore: EKEventStore)
  init(selectionStyle style: EKCalendarChooserSelectionStyle, displayStyle: EKCalendarChooserDisplayStyle, entityType: EKEntityType, eventStore: EKEventStore)
  var selectionStyle: EKCalendarChooserSelectionStyle { get }
  weak var delegate: @sil_weak EKCalendarChooserDelegate?
  var showsDoneButton: Bool
  var showsCancelButton: Bool
  var selectedCalendars: Set<EKCalendar>
}
protocol EKCalendarChooserDelegate : NSObjectProtocol {
  @asyncHandler optional func calendarChooserSelectionDidChange(_ calendarChooser: EKCalendarChooser)
  @asyncHandler optional func calendarChooserDidFinish(_ calendarChooser: EKCalendarChooser)
  @asyncHandler optional func calendarChooserDidCancel(_ calendarChooser: EKCalendarChooser)
}
