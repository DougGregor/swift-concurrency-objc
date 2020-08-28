
extension NSExceptionName {
  static let decimalNumberExactnessException: NSExceptionName
  static let decimalNumberOverflowException: NSExceptionName
  static let decimalNumberUnderflowException: NSExceptionName
  static let decimalNumberDivideByZeroException: NSExceptionName
}
protocol NSDecimalNumberBehaviors {
  func roundingMode() -> NSDecimalNumber.RoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(_ operation: Selector, error: NSDecimalNumber.CalculationError, leftOperand: NSDecimalNumber, rightOperand: NSDecimalNumber?) -> NSDecimalNumber?
}
class NSDecimalNumber : NSNumber {
  convenience init(mantissa: UInt64, exponent: Int16, isNegative flag: Bool)
  init(decimal dcm: Decimal)
  convenience init(string numberValue: String?)
  convenience init(string numberValue: String?, locale: Any?)
  @NSCopying class var zero: NSDecimalNumber { get }
  @NSCopying class var one: NSDecimalNumber { get }
  @NSCopying class var minimum: NSDecimalNumber { get }
  @NSCopying class var maximum: NSDecimalNumber { get }
  @NSCopying class var notANumber: NSDecimalNumber { get }
  func adding(_ decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func adding(_ decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func subtracting(_ decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func subtracting(_ decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func multiplying(by decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func multiplying(by decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func dividing(by decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func dividing(by decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func raising(toPower power: Int) -> NSDecimalNumber
  func raising(toPower power: Int, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func multiplying(byPowerOf10 power: Int16) -> NSDecimalNumber
  func multiplying(byPowerOf10 power: Int16, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func rounding(accordingToBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  class var defaultBehavior: NSDecimalNumberBehaviors
}
class NSDecimalNumberHandler : NSObject, NSDecimalNumberBehaviors, NSCoding {
  class var `default`: NSDecimalNumberHandler { get }
  init(roundingMode: NSDecimalNumber.RoundingMode, scale: Int16, raiseOnExactness exact: Bool, raiseOnOverflow overflow: Bool, raiseOnUnderflow underflow: Bool, raiseOnDivideByZero divideByZero: Bool)
}
extension NSNumber {
  var decimalValue: Decimal { get }
}
extension Scanner {
  @available(watchOS, introduced: 2.0, deprecated: 13.0)
  func scanDecimal(_ dcm: UnsafeMutablePointer<Decimal>?) -> Bool
}
