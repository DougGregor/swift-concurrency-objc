
@available(watchOS 2.0, *)
class CLKTextProvider : NSObject, NSCopying {
  var tintColor: UIColor
  var accessibilityLabel: String?
}

@available(watchOS 2.0, *)
extension CLKTextProvider {
  @available(watchOS 6.0, *)
  convenience init(format: String, _ args: CVarArg...)
}
@available(watchOS 2.0, *)
class CLKSimpleTextProvider : CLKTextProvider {
  convenience init(text: String)
  convenience init(text: String, shortText: String?)
  convenience init(text: String, shortText: String?, accessibilityLabel: String?)
  var text: String
  var shortText: String?
}
@available(watchOS 2.0, *)
class CLKDateTextProvider : CLKTextProvider {
  convenience init(date: Date, units calendarUnits: NSCalendar.Unit)
  convenience init(date: Date, units calendarUnits: NSCalendar.Unit, timeZone: TimeZone?)
  var date: Date
  var calendarUnits: NSCalendar.Unit
  var timeZone: TimeZone?
  var uppercase: Bool
}
@available(watchOS 2.0, *)
class CLKTimeTextProvider : CLKTextProvider {
  convenience init(date: Date)
  convenience init(date: Date, timeZone: TimeZone?)
  var date: Date
  var timeZone: TimeZone?
}
@available(watchOS 2.0, *)
class CLKTimeIntervalTextProvider : CLKTextProvider {
  convenience init(start startDate: Date, end endDate: Date)
  convenience init(start startDate: Date, end endDate: Date, timeZone: TimeZone?)
  var startDate: Date
  var endDate: Date
  var timeZone: TimeZone?
}
@available(watchOS 2.0, *)
enum CLKRelativeDateStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case natural
  case offset
  case timer
  @available(watchOS 5.0, *)
  case naturalAbbreviated
  @available(watchOS 6.0, *)
  case offsetShort
  @available(watchOS 6.0, *)
  case naturalFull
}
@available(watchOS 2.0, *)
class CLKRelativeDateTextProvider : CLKTextProvider {
  convenience init(date: Date, style: CLKRelativeDateStyle, units calendarUnits: NSCalendar.Unit)
  @available(watchOS 7.0, *)
  convenience init(date: Date, relativeTo relativeToDate: Date?, style: CLKRelativeDateStyle, units calendarUnits: NSCalendar.Unit)
  var date: Date
  @available(watchOS 7.0, *)
  var relativeToDate: Date?
  var relativeDateStyle: CLKRelativeDateStyle
  var calendarUnits: NSCalendar.Unit
}
@available(watchOS 2.0, *)
extension CLKTextProvider {
  @available(watchOS 3.0, *)
  class func localizableTextProvider(withStringsFileTextKey textKey: String) -> Self
  @available(watchOS 3.0, *)
  class func localizableTextProvider(withStringsFileTextKey textKey: String, shortTextKey: String?) -> Self
  @available(watchOS 3.0, *)
  class func localizableTextProvider(withStringsFileFormatKey formatKey: String, textProviders: [CLKTextProvider]) -> Self
}
