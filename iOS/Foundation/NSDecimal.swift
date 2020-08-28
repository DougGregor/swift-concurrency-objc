
extension NSDecimalNumber {
  enum RoundingMode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case plain
    case down
    case up
    case bankers
  }
  enum CalculationError : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case noError
    case lossOfPrecision
    case underflow
    case overflow
    case divideByZero
  }
}
var NSDecimalMaxSize: Int32 { get }
var NSDecimalNoScale: Int32 { get }
struct Decimal {
  var _exponent: Int32
  var _length: UInt32
  var _isNegative: UInt32
  var _isCompact: UInt32
  var _reserved: UInt32
  var _mantissa: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16)
  init()
  init(_exponent: Int32, _length: UInt32, _isNegative: UInt32, _isCompact: UInt32, _reserved: UInt32, _mantissa: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16))
}

extension Decimal {
  typealias RoundingMode = NSDecimalNumber.RoundingMode
  typealias CalculationError = NSDecimalNumber.CalculationError
}

extension Decimal : Hashable, Comparable {
  subscript(index: UInt32) -> UInt16 { get }
  var doubleValue: Double { get }
}

extension Decimal : CustomStringConvertible {
  init?(string: __shared String, locale: __shared Locale? = nil)
}

extension Decimal : Codable {
  enum CodingKeys : Int, CodingKey {
    case exponent
    case length
    case isNegative
    case isCompact
    case mantissa
  }
}

extension Decimal : ExpressibleByFloatLiteral {
}

extension Decimal : ExpressibleByIntegerLiteral {
}

extension Decimal : SignedNumeric {
  static func /= (lhs: inout Decimal, rhs: Decimal)
  static func / (lhs: Decimal, rhs: Decimal) -> Decimal
}

extension Decimal {
}

extension Decimal : Strideable {
}

extension Decimal {
  static let leastFiniteMagnitude: Decimal
  static let greatestFiniteMagnitude: Decimal
  static let leastNormalMagnitude: Decimal
  static let leastNonzeroMagnitude: Decimal
  static let pi: Decimal
  static var quietNaN: Decimal { get }
  static var nan: Decimal { get }
  static var radix: Int { get }
  init(_ value: UInt8)
  init(_ value: Int8)
  init(_ value: UInt16)
  init(_ value: Int16)
  init(_ value: UInt32)
  init(_ value: Int32)
  init(_ value: UInt64)
  init(_ value: Int64)
  init(_ value: UInt)
  init(_ value: Int)
  init(_ value: Double)
  init(sign: FloatingPointSign, exponent: Int, significand: Decimal)
  init(signOf: Decimal, magnitudeOf magnitude: Decimal)
  var exponent: Int { get }
  var significand: Decimal { get }
  var sign: FloatingPointSign { get }
  var ulp: Decimal { get }
  var nextUp: Decimal { get }
  var nextDown: Decimal { get }
  var floatingPointClass: FloatingPointClassification { get }
  var isCanonical: Bool { get }
  var isSignMinus: Bool { get }
  var isZero: Bool { get }
  var isSubnormal: Bool { get }
  var isNormal: Bool { get }
  var isFinite: Bool { get }
  var isInfinite: Bool { get }
  var isNaN: Bool { get }
  var isSignaling: Bool { get }
  var isSignalingNaN: Bool { get }
  func isEqual(to other: Decimal) -> Bool
  func isLess(than other: Decimal) -> Bool
  func isLessThanOrEqualTo(_ other: Decimal) -> Bool
  func isTotallyOrdered(belowOrEqualTo other: Decimal) -> Bool
}

extension Decimal : _ObjectiveCBridgeable {
}
func NSDecimalIsNotANumber(_ dcm: UnsafePointer<Decimal>) -> Bool
func NSDecimalCopy(_ destination: UnsafeMutablePointer<Decimal>, _ source: UnsafePointer<Decimal>)
func NSDecimalCompact(_ number: UnsafeMutablePointer<Decimal>)
func NSDecimalCompare(_ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>) -> ComparisonResult
func NSDecimalRound(_ result: UnsafeMutablePointer<Decimal>, _ number: UnsafePointer<Decimal>, _ scale: Int, _ roundingMode: NSDecimalNumber.RoundingMode)
func NSDecimalNormalize(_ number1: UnsafeMutablePointer<Decimal>, _ number2: UnsafeMutablePointer<Decimal>, _ roundingMode: NSDecimalNumber.RoundingMode) -> NSDecimalNumber.CalculationError
func NSDecimalAdd(_ result: UnsafeMutablePointer<Decimal>, _ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>, _ roundingMode: NSDecimalNumber.RoundingMode) -> NSDecimalNumber.CalculationError
func NSDecimalSubtract(_ result: UnsafeMutablePointer<Decimal>, _ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>, _ roundingMode: NSDecimalNumber.RoundingMode) -> NSDecimalNumber.CalculationError
func NSDecimalMultiply(_ result: UnsafeMutablePointer<Decimal>, _ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>, _ roundingMode: NSDecimalNumber.RoundingMode) -> NSDecimalNumber.CalculationError
func NSDecimalDivide(_ result: UnsafeMutablePointer<Decimal>, _ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>, _ roundingMode: NSDecimalNumber.RoundingMode) -> NSDecimalNumber.CalculationError
func NSDecimalPower(_ result: UnsafeMutablePointer<Decimal>, _ number: UnsafePointer<Decimal>, _ power: Int, _ roundingMode: NSDecimalNumber.RoundingMode) -> NSDecimalNumber.CalculationError
func NSDecimalMultiplyByPowerOf10(_ result: UnsafeMutablePointer<Decimal>, _ number: UnsafePointer<Decimal>, _ power: Int16, _ roundingMode: NSDecimalNumber.RoundingMode) -> NSDecimalNumber.CalculationError
func NSDecimalString(_ dcm: UnsafePointer<Decimal>, _ locale: Any?) -> String
