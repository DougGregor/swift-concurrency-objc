
class Scanner : NSObject, NSCopying {
  var string: String { get }
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  var scanLocation: Int
  var charactersToBeSkipped: CharacterSet?
  var caseSensitive: Bool
  var locale: Any?
  init(string: String)
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
extension Scanner {
  enum NumberRepresentation {
    case decimal
    case hexadecimal
  }
  var currentIndex: String.Index
  func _scan<Integer>(representation: Scanner.NumberRepresentation, scanDecimal: (UnsafeMutablePointer<Integer>?) -> Bool, scanHexadecimal: (UnsafeMutablePointer<Integer>?) -> Bool) -> Integer? where Integer : FixedWidthInteger
  func _scan<FloatingPoint>(representation: Scanner.NumberRepresentation, scanDecimal: (UnsafeMutablePointer<FloatingPoint>?) -> Bool, scanHexadecimal: (UnsafeMutablePointer<FloatingPoint>?) -> Bool) -> FloatingPoint? where FloatingPoint : BinaryFloatingPoint
  func _scan<Integer, OverflowingHexadecimalInteger>(representation: Scanner.NumberRepresentation, scanDecimal: (UnsafeMutablePointer<Integer>?) -> Bool, overflowingScanHexadecimal: (UnsafeMutablePointer<OverflowingHexadecimalInteger>?) -> Bool) -> Integer? where Integer : FixedWidthInteger, OverflowingHexadecimalInteger : FixedWidthInteger, OverflowingHexadecimalInteger : UnsignedInteger
  func scanInt(representation: Scanner.NumberRepresentation = .decimal) -> Int?
  func scanInt32(representation: Scanner.NumberRepresentation = .decimal) -> Int32?
  func scanInt64(representation: Scanner.NumberRepresentation = .decimal) -> Int64?
  func scanUInt64(representation: Scanner.NumberRepresentation = .decimal) -> UInt64?
  func scanFloat(representation: Scanner.NumberRepresentation = .decimal) -> Float?
  func scanDouble(representation: Scanner.NumberRepresentation = .decimal) -> Double?
  func scanDecimal() -> Decimal?
  var _currentIndexAfterSkipping: String.Index { get }
  func scanString(_ searchString: String) -> String?
  func scanCharacters(from set: CharacterSet) -> String?
  func scanUpToString(_ substring: String) -> String?
  func scanUpToCharacters(from set: CharacterSet) -> String?
  func scanCharacter() -> Character?
}
extension Scanner {
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  func scanInt32(_ result: UnsafeMutablePointer<Int32>?) -> Bool
  @available(watchOS 2.0, *)
  func scanInt(_ result: UnsafeMutablePointer<Int>?) -> Bool
  func scanInt64(_ result: UnsafeMutablePointer<Int64>?) -> Bool
  @available(watchOS 2.0, *)
  func scanUnsignedLongLong(_ result: UnsafeMutablePointer<UInt64>?) -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  func scanFloat(_ result: UnsafeMutablePointer<Float>?) -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  func scanDouble(_ result: UnsafeMutablePointer<Double>?) -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  func scanHexInt32(_ result: UnsafeMutablePointer<UInt32>?) -> Bool
  @available(watchOS 2.0, *)
  func scanHexInt64(_ result: UnsafeMutablePointer<UInt64>?) -> Bool
  @available(watchOS 2.0, *)
  func scanHexFloat(_ result: UnsafeMutablePointer<Float>?) -> Bool
  @available(watchOS 2.0, *)
  func scanHexDouble(_ result: UnsafeMutablePointer<Double>?) -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  func scanString(_ string: String, into result: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  func scanCharacters(from set: CharacterSet, into result: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  func scanUpTo(_ string: String, into result: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  func scanUpToCharacters(from set: CharacterSet, into result: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool
  var isAtEnd: Bool { get }
  class func localizedScanner(with string: String) -> Any
}
