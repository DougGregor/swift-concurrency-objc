
struct CFDateFormatterKey : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: CFString)
  let rawValue: CFString
}
class CFDateFormatter : _CFObject {
}
@available(iOS 4.0, *)
func CFDateFormatterCreateDateFormatFromTemplate(_ allocator: CFAllocator!, _ tmplate: CFString!, _ options: CFOptionFlags, _ locale: CFLocale!) -> CFString!
func CFDateFormatterGetTypeID() -> CFTypeID
enum CFDateFormatterStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case noStyle
  case shortStyle
  case mediumStyle
  case longStyle
  case fullStyle
}
struct CFISO8601DateFormatOptions : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  @available(iOS 10.0, *)
  static var withYear: CFISO8601DateFormatOptions { get }
  @available(iOS 10.0, *)
  static var withMonth: CFISO8601DateFormatOptions { get }
  @available(iOS 10.0, *)
  static var withWeekOfYear: CFISO8601DateFormatOptions { get }
  @available(iOS 10.0, *)
  static var withDay: CFISO8601DateFormatOptions { get }
  @available(iOS 10.0, *)
  static var withTime: CFISO8601DateFormatOptions { get }
  @available(iOS 10.0, *)
  static var withTimeZone: CFISO8601DateFormatOptions { get }
  @available(iOS 10.0, *)
  static var withSpaceBetweenDateAndTime: CFISO8601DateFormatOptions { get }
  @available(iOS 10.0, *)
  static var withDashSeparatorInDate: CFISO8601DateFormatOptions { get }
  @available(iOS 10.0, *)
  static var withColonSeparatorInTime: CFISO8601DateFormatOptions { get }
  @available(iOS 10.0, *)
  static var withColonSeparatorInTimeZone: CFISO8601DateFormatOptions { get }
  @available(iOS 11.0, *)
  static var withFractionalSeconds: CFISO8601DateFormatOptions { get }
  @available(iOS 10.0, *)
  static var withFullDate: CFISO8601DateFormatOptions { get }
  @available(iOS 10.0, *)
  static var withFullTime: CFISO8601DateFormatOptions { get }
  @available(iOS 10.0, *)
  static var withInternetDateTime: CFISO8601DateFormatOptions { get }
}
@available(iOS 10.0, *)
func CFDateFormatterCreateISO8601Formatter(_ allocator: CFAllocator!, _ formatOptions: CFISO8601DateFormatOptions) -> CFDateFormatter!
func CFDateFormatterCreate(_ allocator: CFAllocator!, _ locale: CFLocale!, _ dateStyle: CFDateFormatterStyle, _ timeStyle: CFDateFormatterStyle) -> CFDateFormatter!
func CFDateFormatterGetLocale(_ formatter: CFDateFormatter!) -> CFLocale!
func CFDateFormatterGetDateStyle(_ formatter: CFDateFormatter!) -> CFDateFormatterStyle
func CFDateFormatterGetTimeStyle(_ formatter: CFDateFormatter!) -> CFDateFormatterStyle
func CFDateFormatterGetFormat(_ formatter: CFDateFormatter!) -> CFString!
func CFDateFormatterSetFormat(_ formatter: CFDateFormatter!, _ formatString: CFString!)
func CFDateFormatterCreateStringWithDate(_ allocator: CFAllocator!, _ formatter: CFDateFormatter!, _ date: CFDate!) -> CFString!
func CFDateFormatterCreateStringWithAbsoluteTime(_ allocator: CFAllocator!, _ formatter: CFDateFormatter!, _ at: CFAbsoluteTime) -> CFString!
func CFDateFormatterCreateDateFromString(_ allocator: CFAllocator!, _ formatter: CFDateFormatter!, _ string: CFString!, _ rangep: UnsafeMutablePointer<CFRange>!) -> CFDate!
func CFDateFormatterGetAbsoluteTimeFromString(_ formatter: CFDateFormatter!, _ string: CFString!, _ rangep: UnsafeMutablePointer<CFRange>!, _ atp: UnsafeMutablePointer<CFAbsoluteTime>!) -> Bool
func CFDateFormatterSetProperty(_ formatter: CFDateFormatter!, _ key: CFString!, _ value: CFTypeRef!)
func CFDateFormatterCopyProperty(_ formatter: CFDateFormatter!, _ key: CFDateFormatterKey!) -> CFTypeRef!
extension CFDateFormatterKey {
  static let isLenient: CFDateFormatterKey!
  static let timeZone: CFDateFormatterKey!
  static let calendarName: CFDateFormatterKey!
  static let defaultFormat: CFDateFormatterKey!
  static let twoDigitStartDate: CFDateFormatterKey!
  static let defaultDate: CFDateFormatterKey!
  static let calendar: CFDateFormatterKey!
  static let eraSymbols: CFDateFormatterKey!
  static let monthSymbols: CFDateFormatterKey!
  static let shortMonthSymbols: CFDateFormatterKey!
  static let weekdaySymbols: CFDateFormatterKey!
  static let shortWeekdaySymbols: CFDateFormatterKey!
  static let amSymbol: CFDateFormatterKey!
  static let pmSymbol: CFDateFormatterKey!
  @available(iOS 2.0, *)
  static let longEraSymbols: CFDateFormatterKey!
  @available(iOS 2.0, *)
  static let veryShortMonthSymbols: CFDateFormatterKey!
  @available(iOS 2.0, *)
  static let standaloneMonthSymbols: CFDateFormatterKey!
  @available(iOS 2.0, *)
  static let shortStandaloneMonthSymbols: CFDateFormatterKey!
  @available(iOS 2.0, *)
  static let veryShortStandaloneMonthSymbols: CFDateFormatterKey!
  @available(iOS 2.0, *)
  static let veryShortWeekdaySymbols: CFDateFormatterKey!
  @available(iOS 2.0, *)
  static let standaloneWeekdaySymbols: CFDateFormatterKey!
  @available(iOS 2.0, *)
  static let shortStandaloneWeekdaySymbols: CFDateFormatterKey!
  @available(iOS 2.0, *)
  static let veryShortStandaloneWeekdaySymbols: CFDateFormatterKey!
  @available(iOS 2.0, *)
  static let quarterSymbols: CFDateFormatterKey!
  @available(iOS 2.0, *)
  static let shortQuarterSymbols: CFDateFormatterKey!
  @available(iOS 2.0, *)
  static let standaloneQuarterSymbols: CFDateFormatterKey!
  @available(iOS 2.0, *)
  static let shortStandaloneQuarterSymbols: CFDateFormatterKey!
  @available(iOS 2.0, *)
  static let gregorianStartDate: CFDateFormatterKey!
  @available(iOS 4.0, *)
  static let doesRelativeDateFormattingKey: CFDateFormatterKey!
}
