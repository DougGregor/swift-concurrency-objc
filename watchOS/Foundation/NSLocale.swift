
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
  @available(watchOS 2.0, *)
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
  @available(watchOS 3.0, *)
  func localizedString(forLocaleIdentifier localeIdentifier: String) -> String
  @available(watchOS 3.0, *)
  var languageCode: String { get }
  @available(watchOS 3.0, *)
  func localizedString(forLanguageCode languageCode: String) -> String?
  @available(watchOS 3.0, *)
  var countryCode: String? { get }
  @available(watchOS 3.0, *)
  func localizedString(forCountryCode countryCode: String) -> String?
  @available(watchOS 3.0, *)
  var scriptCode: String? { get }
  @available(watchOS 3.0, *)
  func localizedString(forScriptCode scriptCode: String) -> String?
  @available(watchOS 3.0, *)
  var variantCode: String? { get }
  @available(watchOS 3.0, *)
  func localizedString(forVariantCode variantCode: String) -> String?
  @available(watchOS 3.0, *)
  var exemplarCharacterSet: CharacterSet { get }
  @available(watchOS 3.0, *)
  var calendarIdentifier: String { get }
  @available(watchOS 3.0, *)
  func localizedString(forCalendarIdentifier calendarIdentifier: String) -> String?
  @available(watchOS 3.0, *)
  var collationIdentifier: String? { get }
  @available(watchOS 3.0, *)
  func localizedString(forCollationIdentifier collationIdentifier: String) -> String?
  @available(watchOS 3.0, *)
  var usesMetricSystem: Bool { get }
  @available(watchOS 3.0, *)
  var decimalSeparator: String { get }
  @available(watchOS 3.0, *)
  var groupingSeparator: String { get }
  @available(watchOS 3.0, *)
  var currencySymbol: String { get }
  @available(watchOS 3.0, *)
  var currencyCode: String? { get }
  @available(watchOS 3.0, *)
  func localizedString(forCurrencyCode currencyCode: String) -> String?
  @available(watchOS 3.0, *)
  var collatorIdentifier: String { get }
  @available(watchOS 3.0, *)
  func localizedString(forCollatorIdentifier collatorIdentifier: String) -> String?
  @available(watchOS 3.0, *)
  var quotationBeginDelimiter: String { get }
  @available(watchOS 3.0, *)
  var quotationEndDelimiter: String { get }
  @available(watchOS 3.0, *)
  var alternateQuotationBeginDelimiter: String { get }
  @available(watchOS 3.0, *)
  var alternateQuotationEndDelimiter: String { get }
}
extension NSLocale {
  @available(watchOS 2.0, *)
  class var autoupdatingCurrent: Locale { get }
  class var current: Locale { get }
  class var system: Locale { get }
}
extension NSLocale {
  class var availableLocaleIdentifiers: [String] { get }
  class var isoLanguageCodes: [String] { get }
  class var isoCountryCodes: [String] { get }
  class var isoCurrencyCodes: [String] { get }
  @available(watchOS 2.0, *)
  class var commonISOCurrencyCodes: [String] { get }
  @available(watchOS 2.0, *)
  class var preferredLanguages: [String] { get }
  class func components(fromLocaleIdentifier string: String) -> [String : String]
  class func localeIdentifier(fromComponents dict: [String : String]) -> String
  class func canonicalLocaleIdentifier(from string: String) -> String
  class func canonicalLanguageIdentifier(from string: String) -> String
  @available(watchOS 2.0, *)
  class func localeIdentifier(fromWindowsLocaleCode lcid: UInt32) -> String?
  @available(watchOS 2.0, *)
  class func windowsLocaleCode(fromLocaleIdentifier localeIdentifier: String) -> UInt32
  @available(watchOS 2.0, *)
  class func characterDirection(forLanguage isoLangCode: String) -> NSLocale.LanguageDirection
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  static let collatorIdentifier: NSLocale.Key
  @available(watchOS 2.0, *)
  static let quotationBeginDelimiterKey: NSLocale.Key
  @available(watchOS 2.0, *)
  static let quotationEndDelimiterKey: NSLocale.Key
  @available(watchOS 2.0, *)
  static let alternateQuotationBeginDelimiterKey: NSLocale.Key
  @available(watchOS 2.0, *)
  static let alternateQuotationEndDelimiterKey: NSLocale.Key
}
@available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Identifier.gregorian")
let NSGregorianCalendar: String
@available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Identifier.buddhist")
let NSBuddhistCalendar: String
@available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Identifier.chinese")
let NSChineseCalendar: String
@available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Identifier.hebrew")
let NSHebrewCalendar: String
@available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Identifier.islamic")
let NSIslamicCalendar: String
@available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Identifier.islamicCivil")
let NSIslamicCivilCalendar: String
@available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Identifier.japanese")
let NSJapaneseCalendar: String
@available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Identifier.republicOfChina")
let NSRepublicOfChinaCalendar: String
@available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Identifier.persian")
let NSPersianCalendar: String
@available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Identifier.indian")
let NSIndianCalendar: String
@available(watchOS, introduced: 2.0, deprecated: 2.0, renamed: "NSCalendar.Identifier.ISO8601")
let NSISO8601Calendar: String
