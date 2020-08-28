
extension NSLocale {
  struct Key : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  enum LanguageDirection : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case unknown
    case leftToRight
    case rightToLeft
    case topToBottom
    case bottomToTop
  }
  @available(macOS 10.5, *)
  class let currentLocaleDidChangeNotification: NSNotification.Name
}
class NSLocale : NSObject, NSCopying, NSSecureCoding {
  func object(forKey key: NSLocale.Key) -> Any?
  func displayName(forKey key: NSLocale.Key, value: Any) -> String?
  init(localeIdentifier string: String)
}

extension NSLocale : _HasCustomAnyHashableRepresentation {
}
extension NSLocale {
  var localeIdentifier: String { get }
  @available(macOS 10.12, *)
  func localizedString(forLocaleIdentifier localeIdentifier: String) -> String
  @available(macOS 10.12, *)
  var languageCode: String { get }
  @available(macOS 10.12, *)
  func localizedString(forLanguageCode languageCode: String) -> String?
  @available(macOS 10.12, *)
  var countryCode: String? { get }
  @available(macOS 10.12, *)
  func localizedString(forCountryCode countryCode: String) -> String?
  @available(macOS 10.12, *)
  var scriptCode: String? { get }
  @available(macOS 10.12, *)
  func localizedString(forScriptCode scriptCode: String) -> String?
  @available(macOS 10.12, *)
  var variantCode: String? { get }
  @available(macOS 10.12, *)
  func localizedString(forVariantCode variantCode: String) -> String?
  @available(macOS 10.12, *)
  var exemplarCharacterSet: CharacterSet { get }
  @available(macOS 10.12, *)
  var calendarIdentifier: String { get }
  @available(macOS 10.12, *)
  func localizedString(forCalendarIdentifier calendarIdentifier: String) -> String?
  @available(macOS 10.12, *)
  var collationIdentifier: String? { get }
  @available(macOS 10.12, *)
  func localizedString(forCollationIdentifier collationIdentifier: String) -> String?
  @available(macOS 10.12, *)
  var usesMetricSystem: Bool { get }
  @available(macOS 10.12, *)
  var decimalSeparator: String { get }
  @available(macOS 10.12, *)
  var groupingSeparator: String { get }
  @available(macOS 10.12, *)
  var currencySymbol: String { get }
  @available(macOS 10.12, *)
  var currencyCode: String? { get }
  @available(macOS 10.12, *)
  func localizedString(forCurrencyCode currencyCode: String) -> String?
  @available(macOS 10.12, *)
  var collatorIdentifier: String { get }
  @available(macOS 10.12, *)
  func localizedString(forCollatorIdentifier collatorIdentifier: String) -> String?
  @available(macOS 10.12, *)
  var quotationBeginDelimiter: String { get }
  @available(macOS 10.12, *)
  var quotationEndDelimiter: String { get }
  @available(macOS 10.12, *)
  var alternateQuotationBeginDelimiter: String { get }
  @available(macOS 10.12, *)
  var alternateQuotationEndDelimiter: String { get }
}
extension NSLocale {
  @available(macOS 10.5, *)
  class var autoupdatingCurrent: Locale { get }
  class var current: Locale { get }
  class var system: Locale { get }
}
extension NSLocale {
  class var availableLocaleIdentifiers: [String] { get }
  class var isoLanguageCodes: [String] { get }
  class var isoCountryCodes: [String] { get }
  class var isoCurrencyCodes: [String] { get }
  @available(macOS 10.5, *)
  class var commonISOCurrencyCodes: [String] { get }
  @available(macOS 10.5, *)
  class var preferredLanguages: [String] { get }
  class func components(fromLocaleIdentifier string: String) -> [String : String]
  class func localeIdentifier(fromComponents dict: [String : String]) -> String
  class func canonicalLocaleIdentifier(from string: String) -> String
  class func canonicalLanguageIdentifier(from string: String) -> String
  @available(macOS 10.6, *)
  class func localeIdentifier(fromWindowsLocaleCode lcid: UInt32) -> String?
  @available(macOS 10.6, *)
  class func windowsLocaleCode(fromLocaleIdentifier localeIdentifier: String) -> UInt32
  @available(macOS 10.6, *)
  class func characterDirection(forLanguage isoLangCode: String) -> NSLocale.LanguageDirection
  @available(macOS 10.6, *)
  class func lineDirection(forLanguage isoLangCode: String) -> NSLocale.LanguageDirection
}
extension NSLocale.Key {
  static let identifier: NSLocale.Key
  static let languageCode: NSLocale.Key
  static let countryCode: NSLocale.Key
  static let scriptCode: NSLocale.Key
  static let variantCode: NSLocale.Key
  static let exemplarCharacterSet: NSLocale.Key
  static let calendar: NSLocale.Key
  static let collationIdentifier: NSLocale.Key
  static let usesMetricSystem: NSLocale.Key
  static let measurementSystem: NSLocale.Key
  static let decimalSeparator: NSLocale.Key
  static let groupingSeparator: NSLocale.Key
  static let currencySymbol: NSLocale.Key
  static let currencyCode: NSLocale.Key
  @available(macOS 10.6, *)
  static let collatorIdentifier: NSLocale.Key
  @available(macOS 10.6, *)
  static let quotationBeginDelimiterKey: NSLocale.Key
  @available(macOS 10.6, *)
  static let quotationEndDelimiterKey: NSLocale.Key
  @available(macOS 10.6, *)
  static let alternateQuotationBeginDelimiterKey: NSLocale.Key
  @available(macOS 10.6, *)
  static let alternateQuotationEndDelimiterKey: NSLocale.Key
}
@available(macOS, introduced: 10.4, deprecated: 10.10, renamed: "NSCalendar.Identifier.gregorian")
let NSGregorianCalendar: String
@available(macOS, introduced: 10.4, deprecated: 10.10, renamed: "NSCalendar.Identifier.buddhist")
let NSBuddhistCalendar: String
@available(macOS, introduced: 10.4, deprecated: 10.10, renamed: "NSCalendar.Identifier.chinese")
let NSChineseCalendar: String
@available(macOS, introduced: 10.4, deprecated: 10.10, renamed: "NSCalendar.Identifier.hebrew")
let NSHebrewCalendar: String
@available(macOS, introduced: 10.4, deprecated: 10.10, renamed: "NSCalendar.Identifier.islamic")
let NSIslamicCalendar: String
@available(macOS, introduced: 10.4, deprecated: 10.10, renamed: "NSCalendar.Identifier.islamicCivil")
let NSIslamicCivilCalendar: String
@available(macOS, introduced: 10.4, deprecated: 10.10, renamed: "NSCalendar.Identifier.japanese")
let NSJapaneseCalendar: String
@available(macOS, introduced: 10.6, deprecated: 10.10, renamed: "NSCalendar.Identifier.republicOfChina")
let NSRepublicOfChinaCalendar: String
@available(macOS, introduced: 10.6, deprecated: 10.10, renamed: "NSCalendar.Identifier.persian")
let NSPersianCalendar: String
@available(macOS, introduced: 10.6, deprecated: 10.10, renamed: "NSCalendar.Identifier.indian")
let NSIndianCalendar: String
@available(macOS, introduced: 10.6, deprecated: 10.10, renamed: "NSCalendar.Identifier.ISO8601")
let NSISO8601Calendar: String
