
struct CFLocaleIdentifier : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFString)
  init(rawValue: CFString)
  let rawValue: CFString
}
struct CFLocaleKey : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: CFString)
  let rawValue: CFString
}
class CFLocale : _CFObject {
}
func CFLocaleGetTypeID() -> CFTypeID
func CFLocaleGetSystem() -> CFLocale!
func CFLocaleCopyCurrent() -> CFLocale!
func CFLocaleCopyAvailableLocaleIdentifiers() -> CFArray!
func CFLocaleCopyISOLanguageCodes() -> CFArray!
func CFLocaleCopyISOCountryCodes() -> CFArray!
func CFLocaleCopyISOCurrencyCodes() -> CFArray!
@available(watchOS 2.0, *)
func CFLocaleCopyCommonISOCurrencyCodes() -> CFArray!
@available(watchOS 2.0, *)
func CFLocaleCopyPreferredLanguages() -> CFArray!
func CFLocaleCreateCanonicalLanguageIdentifierFromString(_ allocator: CFAllocator!, _ localeIdentifier: CFString!) -> CFLocaleIdentifier!
func CFLocaleCreateCanonicalLocaleIdentifierFromString(_ allocator: CFAllocator!, _ localeIdentifier: CFString!) -> CFLocaleIdentifier!
func CFLocaleCreateCanonicalLocaleIdentifierFromScriptManagerCodes(_ allocator: CFAllocator!, _ lcode: LangCode, _ rcode: RegionCode) -> CFLocaleIdentifier!
@available(watchOS 2.0, *)
func CFLocaleCreateLocaleIdentifierFromWindowsLocaleCode(_ allocator: CFAllocator!, _ lcid: UInt32) -> CFLocaleIdentifier!
@available(watchOS 2.0, *)
func CFLocaleGetWindowsLocaleCodeFromLocaleIdentifier(_ localeIdentifier: CFLocaleIdentifier!) -> UInt32
enum CFLocaleLanguageDirection : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case unknown
  case leftToRight
  case rightToLeft
  case topToBottom
  case bottomToTop
}
@available(watchOS 2.0, *)
func CFLocaleGetLanguageCharacterDirection(_ isoLangCode: CFString!) -> CFLocaleLanguageDirection
@available(watchOS 2.0, *)
func CFLocaleGetLanguageLineDirection(_ isoLangCode: CFString!) -> CFLocaleLanguageDirection
func CFLocaleCreateComponentsFromLocaleIdentifier(_ allocator: CFAllocator!, _ localeID: CFLocaleIdentifier!) -> CFDictionary!
func CFLocaleCreateLocaleIdentifierFromComponents(_ allocator: CFAllocator!, _ dictionary: CFDictionary!) -> CFLocaleIdentifier!
func CFLocaleCreate(_ allocator: CFAllocator!, _ localeIdentifier: CFLocaleIdentifier!) -> CFLocale!
func CFLocaleCreateCopy(_ allocator: CFAllocator!, _ locale: CFLocale!) -> CFLocale!
func CFLocaleGetIdentifier(_ locale: CFLocale!) -> CFLocaleIdentifier!
func CFLocaleGetValue(_ locale: CFLocale!, _ key: CFLocaleKey!) -> CFTypeRef!
func CFLocaleCopyDisplayNameForPropertyValue(_ displayLocale: CFLocale!, _ key: CFLocaleKey!, _ value: CFString!) -> CFString!
extension CFNotificationName {
  @available(watchOS 2.0, *)
  static let cfLocaleCurrentLocaleDidChange: CFNotificationName!
}
extension CFLocaleKey {
  static let identifier: CFLocaleKey!
  static let languageCode: CFLocaleKey!
  static let countryCode: CFLocaleKey!
  static let scriptCode: CFLocaleKey!
  static let variantCode: CFLocaleKey!
  static let exemplarCharacterSet: CFLocaleKey!
  static let calendarIdentifier: CFLocaleKey!
  static let calendar: CFLocaleKey!
  static let collationIdentifier: CFLocaleKey!
  static let usesMetricSystem: CFLocaleKey!
  static let measurementSystem: CFLocaleKey!
  static let decimalSeparator: CFLocaleKey!
  static let groupingSeparator: CFLocaleKey!
  static let currencySymbol: CFLocaleKey!
  static let currencyCode: CFLocaleKey!
  @available(watchOS 2.0, *)
  static let collatorIdentifier: CFLocaleKey!
  @available(watchOS 2.0, *)
  static let quotationBeginDelimiterKey: CFLocaleKey!
  @available(watchOS 2.0, *)
  static let quotationEndDelimiterKey: CFLocaleKey!
  @available(watchOS 2.0, *)
  static let alternateQuotationBeginDelimiterKey: CFLocaleKey!
  @available(watchOS 2.0, *)
  static let alternateQuotationEndDelimiterKey: CFLocaleKey!
}
struct CFCalendarIdentifier : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: CFString)
  let rawValue: CFString
}
extension CFCalendarIdentifier {
  static let gregorianCalendar: CFCalendarIdentifier!
  static let buddhistCalendar: CFCalendarIdentifier!
  static let chineseCalendar: CFCalendarIdentifier!
  static let hebrewCalendar: CFCalendarIdentifier!
  static let islamicCalendar: CFCalendarIdentifier!
  static let islamicCivilCalendar: CFCalendarIdentifier!
  static let japaneseCalendar: CFCalendarIdentifier!
  @available(watchOS 2.0, *)
  static let republicOfChinaCalendar: CFCalendarIdentifier!
  @available(watchOS 2.0, *)
  static let persianCalendar: CFCalendarIdentifier!
  @available(watchOS 2.0, *)
  static let indianCalendar: CFCalendarIdentifier!
  @available(watchOS 2.0, *)
  static let cfiso8601Calendar: CFCalendarIdentifier!
  @available(watchOS 2.0, *)
  static let islamicTabularCalendar: CFCalendarIdentifier!
  @available(watchOS 2.0, *)
  static let islamicUmmAlQuraCalendar: CFCalendarIdentifier!
}
