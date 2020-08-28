
class DateFormatter : Formatter {
  @available(macOS 10.10, *)
  var formattingContext: Formatter.Context
  func getObjectValue(_ obj: AutoreleasingUnsafeMutablePointer<AnyObject?>?, for string: String, range rangep: UnsafeMutablePointer<NSRange>?) throws
  func string(from date: Date) -> String
  func date(from string: String) -> Date?
  @available(macOS 10.6, *)
  class func localizedString(from date: Date, dateStyle dstyle: DateFormatter.Style, timeStyle tstyle: DateFormatter.Style) -> String
  @available(macOS 10.6, *)
  class func dateFormat(fromTemplate tmplate: String, options opts: Int, locale: Locale?) -> String?
  class var defaultFormatterBehavior: DateFormatter.Behavior
  @available(macOS 10.10, *)
  func setLocalizedDateFormatFromTemplate(_ dateFormatTemplate: String)
  var dateFormat: String!
  var dateStyle: DateFormatter.Style
  var timeStyle: DateFormatter.Style
  var locale: Locale!
  var generatesCalendarDates: Bool
  var formatterBehavior: DateFormatter.Behavior
  var timeZone: TimeZone!
  var calendar: Calendar!
  var isLenient: Bool
  var twoDigitStartDate: Date?
  var defaultDate: Date?
  var eraSymbols: [String]!
  var monthSymbols: [String]!
  var shortMonthSymbols: [String]!
  var weekdaySymbols: [String]!
  var shortWeekdaySymbols: [String]!
  var amSymbol: String!
  var pmSymbol: String!
  @available(macOS 10.5, *)
  var longEraSymbols: [String]!
  @available(macOS 10.5, *)
  var veryShortMonthSymbols: [String]!
  @available(macOS 10.5, *)
  var standaloneMonthSymbols: [String]!
  @available(macOS 10.5, *)
  var shortStandaloneMonthSymbols: [String]!
  @available(macOS 10.5, *)
  var veryShortStandaloneMonthSymbols: [String]!
  @available(macOS 10.5, *)
  var veryShortWeekdaySymbols: [String]!
  @available(macOS 10.5, *)
  var standaloneWeekdaySymbols: [String]!
  @available(macOS 10.5, *)
  var shortStandaloneWeekdaySymbols: [String]!
  @available(macOS 10.5, *)
  var veryShortStandaloneWeekdaySymbols: [String]!
  @available(macOS 10.5, *)
  var quarterSymbols: [String]!
  @available(macOS 10.5, *)
  var shortQuarterSymbols: [String]!
  @available(macOS 10.5, *)
  var standaloneQuarterSymbols: [String]!
  @available(macOS 10.5, *)
  var shortStandaloneQuarterSymbols: [String]!
  @available(macOS 10.5, *)
  var gregorianStartDate: Date?
  @available(macOS 10.6, *)
  var doesRelativeDateFormatting: Bool
}
extension DateFormatter {
  enum Style : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case none
    case short
    case medium
    case long
    case full
  }
  enum Behavior : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    case behavior10_0
    case behavior10_4
  }
}
extension DateFormatter {
}
