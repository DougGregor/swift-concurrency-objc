
extension NumberFormatter {
  enum Behavior : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    case behavior10_4
  }
  enum Style : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case none
    case decimal
    case currency
    case percent
    case scientific
    case spellOut
    @available(watchOS 2.0, *)
    case ordinal
    @available(watchOS 2.0, *)
    case currencyISOCode
    @available(watchOS 2.0, *)
    case currencyPlural
    @available(watchOS 2.0, *)
    case currencyAccounting
  }
  enum PadPosition : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case beforePrefix
    case afterPrefix
    case beforeSuffix
    case afterSuffix
  }
  enum RoundingMode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case ceiling
    case floor
    case down
    case up
    case halfEven
    case halfDown
    case halfUp
  }
}
class NumberFormatter : Formatter {
  @available(watchOS 2.0, *)
  var formattingContext: Formatter.Context
  func getObjectValue(_ obj: AutoreleasingUnsafeMutablePointer<AnyObject?>?, for string: String, range rangep: UnsafeMutablePointer<NSRange>?) throws
  func string(from number: NSNumber) -> String?
  func number(from string: String) -> NSNumber?
  @available(watchOS 2.0, *)
  class func localizedString(from num: NSNumber, number nstyle: NumberFormatter.Style) -> String
  class func defaultFormatterBehavior() -> NumberFormatter.Behavior
  class func setDefaultFormatterBehavior(_ behavior: NumberFormatter.Behavior)
  var numberStyle: NumberFormatter.Style
  var locale: Locale!
  var generatesDecimalNumbers: Bool
  var formatterBehavior: NumberFormatter.Behavior
  var negativeFormat: String!
  var textAttributesForNegativeValues: [String : Any]?
  var positiveFormat: String!
  var textAttributesForPositiveValues: [String : Any]?
  var allowsFloats: Bool
  var decimalSeparator: String!
  var alwaysShowsDecimalSeparator: Bool
  var currencyDecimalSeparator: String!
  var usesGroupingSeparator: Bool
  var groupingSeparator: String!
  var zeroSymbol: String?
  var textAttributesForZero: [String : Any]?
  var nilSymbol: String
  var textAttributesForNil: [String : Any]?
  var notANumberSymbol: String!
  var textAttributesForNotANumber: [String : Any]?
  var positiveInfinitySymbol: String
  var textAttributesForPositiveInfinity: [String : Any]?
  var negativeInfinitySymbol: String
  var textAttributesForNegativeInfinity: [String : Any]?
  var positivePrefix: String!
  var positiveSuffix: String!
  var negativePrefix: String!
  var negativeSuffix: String!
  var currencyCode: String!
  var currencySymbol: String!
  var internationalCurrencySymbol: String!
  var percentSymbol: String!
  var perMillSymbol: String!
  var minusSign: String!
  var plusSign: String!
  var exponentSymbol: String!
  var groupingSize: Int
  var secondaryGroupingSize: Int
  @NSCopying var multiplier: NSNumber?
  var formatWidth: Int
  var paddingCharacter: String!
  var paddingPosition: NumberFormatter.PadPosition
  var roundingMode: NumberFormatter.RoundingMode
  @NSCopying var roundingIncrement: NSNumber!
  var minimumIntegerDigits: Int
  var maximumIntegerDigits: Int
  var minimumFractionDigits: Int
  var maximumFractionDigits: Int
  @NSCopying var minimum: NSNumber?
  @NSCopying var maximum: NSNumber?
  @available(watchOS 2.0, *)
  var currencyGroupingSeparator: String!
  @available(watchOS 2.0, *)
  var isLenient: Bool
  @available(watchOS 2.0, *)
  var usesSignificantDigits: Bool
  @available(watchOS 2.0, *)
  var minimumSignificantDigits: Int
  @available(watchOS 2.0, *)
  var maximumSignificantDigits: Int
  @available(watchOS 2.0, *)
  var isPartialStringValidationEnabled: Bool
}
