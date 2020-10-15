
class CFCalendar : _CFObject {
}
func CFCalendarGetTypeID() -> CFTypeID
func CFCalendarCopyCurrent() -> CFCalendar!
func CFCalendarCreateWithIdentifier(_ allocator: CFAllocator!, _ identifier: CFCalendarIdentifier!) -> CFCalendar!
func CFCalendarGetIdentifier(_ calendar: CFCalendar!) -> CFCalendarIdentifier!
func CFCalendarCopyLocale(_ calendar: CFCalendar!) -> CFLocale!
func CFCalendarSetLocale(_ calendar: CFCalendar!, _ locale: CFLocale!)
func CFCalendarCopyTimeZone(_ calendar: CFCalendar!) -> CFTimeZone!
func CFCalendarSetTimeZone(_ calendar: CFCalendar!, _ tz: CFTimeZone!)
func CFCalendarGetFirstWeekday(_ calendar: CFCalendar!) -> CFIndex
func CFCalendarSetFirstWeekday(_ calendar: CFCalendar!, _ wkdy: CFIndex)
func CFCalendarGetMinimumDaysInFirstWeek(_ calendar: CFCalendar!) -> CFIndex
func CFCalendarSetMinimumDaysInFirstWeek(_ calendar: CFCalendar!, _ mwd: CFIndex)
struct CFCalendarUnit : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var era: CFCalendarUnit { get }
  static var year: CFCalendarUnit { get }
  static var month: CFCalendarUnit { get }
  static var day: CFCalendarUnit { get }
  static var hour: CFCalendarUnit { get }
  static var minute: CFCalendarUnit { get }
  static var second: CFCalendarUnit { get }
  @available(macOS, introduced: 10.4, deprecated: 10.10, message: "Use kCFCalendarUnitWeekOfYear or kCFCalendarUnitWeekOfMonth instead")
  static var week: CFCalendarUnit { get }
  static var weekday: CFCalendarUnit { get }
  static var weekdayOrdinal: CFCalendarUnit { get }
  @available(macOS 10.6, *)
  static var quarter: CFCalendarUnit { get }
  @available(macOS 10.7, *)
  static var weekOfMonth: CFCalendarUnit { get }
  @available(macOS 10.7, *)
  static var weekOfYear: CFCalendarUnit { get }
  @available(macOS 10.7, *)
  static var yearForWeekOfYear: CFCalendarUnit { get }
}
func CFCalendarGetMinimumRangeOfUnit(_ calendar: CFCalendar!, _ unit: CFCalendarUnit) -> CFRange
func CFCalendarGetMaximumRangeOfUnit(_ calendar: CFCalendar!, _ unit: CFCalendarUnit) -> CFRange
func CFCalendarGetRangeOfUnit(_ calendar: CFCalendar!, _ smallerUnit: CFCalendarUnit, _ biggerUnit: CFCalendarUnit, _ at: CFAbsoluteTime) -> CFRange
func CFCalendarGetOrdinalityOfUnit(_ calendar: CFCalendar!, _ smallerUnit: CFCalendarUnit, _ biggerUnit: CFCalendarUnit, _ at: CFAbsoluteTime) -> CFIndex
@available(macOS 10.5, *)
func CFCalendarGetTimeRangeOfUnit(_ calendar: CFCalendar!, _ unit: CFCalendarUnit, _ at: CFAbsoluteTime, _ startp: UnsafeMutablePointer<CFAbsoluteTime>!, _ tip: UnsafeMutablePointer<CFTimeInterval>!) -> Bool
var kCFCalendarComponentsWrap: CFOptionFlags { get }
