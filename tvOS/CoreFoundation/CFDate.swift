
typealias CFTimeInterval = Double
typealias CFAbsoluteTime = CFTimeInterval
func CFAbsoluteTimeGetCurrent() -> CFAbsoluteTime
let kCFAbsoluteTimeIntervalSince1970: CFTimeInterval
let kCFAbsoluteTimeIntervalSince1904: CFTimeInterval
class CFDate : _CFObject {
}
func CFDateGetTypeID() -> CFTypeID
func CFDateCreate(_ allocator: CFAllocator!, _ at: CFAbsoluteTime) -> CFDate!
func CFDateGetAbsoluteTime(_ theDate: CFDate!) -> CFAbsoluteTime
func CFDateGetTimeIntervalSinceDate(_ theDate: CFDate!, _ otherDate: CFDate!) -> CFTimeInterval
func CFDateCompare(_ theDate: CFDate!, _ otherDate: CFDate!, _ context: UnsafeMutableRawPointer!) -> CFComparisonResult
class CFTimeZone : _CFObject {
}
@available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
struct CFGregorianDate {
  var year: Int32
  var month: Int8
  var day: Int8
  var hour: Int8
  var minute: Int8
  var second: Double
  init()
  init(year: Int32, month: Int8, day: Int8, hour: Int8, minute: Int8, second: Double)
}
@available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
struct CFGregorianUnits {
  var years: Int32
  var months: Int32
  var days: Int32
  var hours: Int32
  var minutes: Int32
  var seconds: Double
  init()
  init(years: Int32, months: Int32, days: Int32, hours: Int32, minutes: Int32, seconds: Double)
}
struct CFGregorianUnitFlags : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
  static var unitsYears: CFGregorianUnitFlags { get }
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
  static var unitsMonths: CFGregorianUnitFlags { get }
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
  static var unitsDays: CFGregorianUnitFlags { get }
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
  static var unitsHours: CFGregorianUnitFlags { get }
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
  static var unitsMinutes: CFGregorianUnitFlags { get }
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
  static var unitsSeconds: CFGregorianUnitFlags { get }
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
  static var allUnits: CFGregorianUnitFlags { get }
}
@available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
func CFGregorianDateIsValid(_ gdate: CFGregorianDate, _ unitFlags: CFOptionFlags) -> Bool
@available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
func CFGregorianDateGetAbsoluteTime(_ gdate: CFGregorianDate, _ tz: CFTimeZone!) -> CFAbsoluteTime
@available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetGregorianDate(_ at: CFAbsoluteTime, _ tz: CFTimeZone!) -> CFGregorianDate
@available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeAddGregorianUnits(_ at: CFAbsoluteTime, _ tz: CFTimeZone!, _ units: CFGregorianUnits) -> CFAbsoluteTime
@available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetDifferenceAsGregorianUnits(_ at1: CFAbsoluteTime, _ at2: CFAbsoluteTime, _ tz: CFTimeZone!, _ unitFlags: CFOptionFlags) -> CFGregorianUnits
@available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetDayOfWeek(_ at: CFAbsoluteTime, _ tz: CFTimeZone!) -> Int32
@available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetDayOfYear(_ at: CFAbsoluteTime, _ tz: CFTimeZone!) -> Int32
@available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetWeekOfYear(_ at: CFAbsoluteTime, _ tz: CFTimeZone!) -> Int32
