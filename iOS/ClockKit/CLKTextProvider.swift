
class CLKTextProvider : NSObject, NSCopying {
  var tintColor: UIColor
}
class CLKSimpleTextProvider : CLKTextProvider {
  convenience init(text: String)
  convenience init(text: String, shortText: String?)
  convenience init(text: String, shortText: String?, accessibilityLabel: String?)
  var text: String
  var shortText: String?
}
class CLKDateTextProvider : CLKTextProvider {
  convenience init(date: Date, units calendarUnits: NSCalendar.Unit)
  convenience init(date: Date, units calendarUnits: NSCalendar.Unit, timeZone: TimeZone?)
  var date: Date
  var calendarUnits: NSCalendar.Unit
  var timeZone: TimeZone?
  var uppercase: Bool
}
class CLKTimeTextProvider : CLKTextProvider {
  convenience init(date: Date)
  convenience init(date: Date, timeZone: TimeZone?)
  var date: Date
  var timeZone: TimeZone?
}
class CLKTimeIntervalTextProvider : CLKTextProvider {
  convenience init(start startDate: Date, end endDate: Date)
  convenience init(start startDate: Date, end endDate: Date, timeZone: TimeZone?)
  var startDate: Date
  var endDate: Date
  var timeZone: TimeZone?
}
enum CLKRelativeDateStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case natural
  case offset
  case timer
  case naturalAbbreviated
  case offsetShort
  case naturalFull
}
class CLKRelativeDateTextProvider : CLKTextProvider {
  convenience init(date: Date, style: CLKRelativeDateStyle, units calendarUnits: NSCalendar.Unit)
  convenience init(date: Date, relativeTo relativeToDate: Date?, style: CLKRelativeDateStyle, units calendarUnits: NSCalendar.Unit)
  var date: Date
  var relativeToDate: Date?
  var relativeDateStyle: CLKRelativeDateStyle
  var calendarUnits: NSCalendar.Unit
}
extension CLKTextProvider {
  class func localizableTextProvider(withStringsFileTextKey textKey: String) -> Self
  class func localizableTextProvider(withStringsFileTextKey textKey: String, shortTextKey: String?) -> Self
  class func localizableTextProvider(withStringsFileFormatKey formatKey: String, textProviders: [CLKTextProvider]) -> Self
}
