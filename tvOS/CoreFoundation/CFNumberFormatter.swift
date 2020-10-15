
struct CFNumberFormatterKey : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: CFString)
  let rawValue: CFString
}
class CFNumberFormatter : _CFObject {
}
func CFNumberFormatterGetTypeID() -> CFTypeID
enum CFNumberFormatterStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case noStyle
  case decimalStyle
  case currencyStyle
  case percentStyle
  case scientificStyle
  case spellOutStyle
  @available(tvOS 9.0, *)
  case ordinalStyle
  @available(tvOS 9.0, *)
  case currencyISOCodeStyle
  @available(tvOS 9.0, *)
  case currencyPluralStyle
  @available(tvOS 9.0, *)
  case currencyAccountingStyle
}
func CFNumberFormatterCreate(_ allocator: CFAllocator!, _ locale: CFLocale!, _ style: CFNumberFormatterStyle) -> CFNumberFormatter!
func CFNumberFormatterGetLocale(_ formatter: CFNumberFormatter!) -> CFLocale!
func CFNumberFormatterGetStyle(_ formatter: CFNumberFormatter!) -> CFNumberFormatterStyle
func CFNumberFormatterGetFormat(_ formatter: CFNumberFormatter!) -> CFString!
func CFNumberFormatterSetFormat(_ formatter: CFNumberFormatter!, _ formatString: CFString!)
func CFNumberFormatterCreateStringWithNumber(_ allocator: CFAllocator!, _ formatter: CFNumberFormatter!, _ number: CFNumber!) -> CFString!
func CFNumberFormatterCreateStringWithValue(_ allocator: CFAllocator!, _ formatter: CFNumberFormatter!, _ numberType: CFNumberType, _ valuePtr: UnsafeRawPointer!) -> CFString!
struct CFNumberFormatterOptionFlags : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var parseIntegersOnly: CFNumberFormatterOptionFlags { get }
}
func CFNumberFormatterCreateNumberFromString(_ allocator: CFAllocator!, _ formatter: CFNumberFormatter!, _ string: CFString!, _ rangep: UnsafeMutablePointer<CFRange>!, _ options: CFOptionFlags) -> CFNumber!
func CFNumberFormatterGetValueFromString(_ formatter: CFNumberFormatter!, _ string: CFString!, _ rangep: UnsafeMutablePointer<CFRange>!, _ numberType: CFNumberType, _ valuePtr: UnsafeMutableRawPointer!) -> Bool
func CFNumberFormatterSetProperty(_ formatter: CFNumberFormatter!, _ key: CFNumberFormatterKey!, _ value: CFTypeRef!)
func CFNumberFormatterCopyProperty(_ formatter: CFNumberFormatter!, _ key: CFNumberFormatterKey!) -> CFTypeRef!
extension CFNumberFormatterKey {
  static let currencyCode: CFNumberFormatterKey!
  static let decimalSeparator: CFNumberFormatterKey!
  static let currencyDecimalSeparator: CFNumberFormatterKey!
  static let alwaysShowDecimalSeparator: CFNumberFormatterKey!
  static let groupingSeparator: CFNumberFormatterKey!
  static let useGroupingSeparator: CFNumberFormatterKey!
  static let percentSymbol: CFNumberFormatterKey!
  static let zeroSymbol: CFNumberFormatterKey!
  static let naNSymbol: CFNumberFormatterKey!
  static let infinitySymbol: CFNumberFormatterKey!
  static let minusSign: CFNumberFormatterKey!
  static let plusSign: CFNumberFormatterKey!
  static let currencySymbol: CFNumberFormatterKey!
  static let exponentSymbol: CFNumberFormatterKey!
  static let minIntegerDigits: CFNumberFormatterKey!
  static let maxIntegerDigits: CFNumberFormatterKey!
  static let minFractionDigits: CFNumberFormatterKey!
  static let maxFractionDigits: CFNumberFormatterKey!
  static let groupingSize: CFNumberFormatterKey!
  static let secondaryGroupingSize: CFNumberFormatterKey!
  static let roundingMode: CFNumberFormatterKey!
  static let roundingIncrement: CFNumberFormatterKey!
  static let formatWidth: CFNumberFormatterKey!
  static let paddingPosition: CFNumberFormatterKey!
  static let paddingCharacter: CFNumberFormatterKey!
  static let defaultFormat: CFNumberFormatterKey!
  static let multiplier: CFNumberFormatterKey!
  static let positivePrefix: CFNumberFormatterKey!
  static let positiveSuffix: CFNumberFormatterKey!
  static let negativePrefix: CFNumberFormatterKey!
  static let negativeSuffix: CFNumberFormatterKey!
  static let perMillSymbol: CFNumberFormatterKey!
  static let internationalCurrencySymbol: CFNumberFormatterKey!
  @available(tvOS 9.0, *)
  static let currencyGroupingSeparator: CFNumberFormatterKey!
  @available(tvOS 9.0, *)
  static let isLenient: CFNumberFormatterKey!
  @available(tvOS 9.0, *)
  static let useSignificantDigits: CFNumberFormatterKey!
  @available(tvOS 9.0, *)
  static let minSignificantDigits: CFNumberFormatterKey!
  @available(tvOS 9.0, *)
  static let maxSignificantDigits: CFNumberFormatterKey!
}
enum CFNumberFormatterRoundingMode : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case roundCeiling
  case roundFloor
  case roundDown
  case roundUp
  case roundHalfEven
  case roundHalfDown
  case roundHalfUp
}
enum CFNumberFormatterPadPosition : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case beforePrefix
  case afterPrefix
  case beforeSuffix
  case afterSuffix
}
func CFNumberFormatterGetDecimalInfoForCurrencyCode(_ currencyCode: CFString!, _ defaultFractionDigits: UnsafeMutablePointer<Int32>!, _ roundingIncrement: UnsafeMutablePointer<Double>!) -> Bool
