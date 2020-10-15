
class DateFormatter : Formatter {
  @available(tvOS 9.0, *)
  var formattingContext: Formatter.Context
  func getObjectValue(_ obj: AutoreleasingUnsafeMutablePointer<AnyObject?>?, for string: String, range rangep: UnsafeMutablePointer<NSRange>?) throws
  func string(from date: Date) -> String
  func date(from string: String) -> Date?
  @available(tvOS 9.0, *)
  class func localizedString(from date: Date, dateStyle dstyle: DateFormatter.Style, timeStyle tstyle: DateFormatter.Style) -> String
  @available(tvOS 9.0, *)
  class func dateFormat(fromTemplate tmplate: String, options opts: Int, locale: Locale?) -> String?
  class var defaultFormatterBehavior: DateFormatter.Behavior
  @available(tvOS 9.0, *)
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
  @available(tvOS 9.0, *)
  var longEraSymbols: [String]!
  @available(tvOS 9.0, *)
  var veryShortMonthSymbols: [String]!
  @available(tvOS 9.0, *)
  var standaloneMonthSymbols: [String]!
  @available(tvOS 9.0, *)
  var shortStandaloneMonthSymbols: [String]!
  @available(tvOS 9.0, *)
  var veryShortStandaloneMonthSymbols: [String]!
  @available(tvOS 9.0, *)
  var veryShortWeekdaySymbols: [String]!
  @available(tvOS 9.0, *)
  var standaloneWeekdaySymbols: [String]!
  @available(tvOS 9.0, *)
  var shortStandaloneWeekdaySymbols: [String]!
  @available(tvOS 9.0, *)
  var veryShortStandaloneWeekdaySymbols: [String]!
  @available(tvOS 9.0, *)
  var quarterSymbols: [String]!
  @available(tvOS 9.0, *)
  var shortQuarterSymbols: [String]!
  @available(tvOS 9.0, *)
  var standaloneQuarterSymbols: [String]!
  @available(tvOS 9.0, *)
  var shortStandaloneQuarterSymbols: [String]!
  @available(tvOS 9.0, *)
  var gregorianStartDate: Date?
  @available(tvOS 9.0, *)
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
    case behavior10_4
  }
}
