
struct _NSRange {
  var location: Int
  var length: Int
  init()
  init(location: Int, length: Int)
}

extension _NSRange : Hashable {
}

extension _NSRange : CustomStringConvertible, CustomDebugStringConvertible {
}

extension _NSRange {
  init?(_ string: __shared String)
}

extension _NSRange {
  var lowerBound: Int { get }
  var upperBound: Int { get }
  func contains(_ index: Int) -> Bool
  mutating func formUnion(_ other: NSRange)
  func union(_ other: NSRange) -> NSRange
  func intersection(_ other: NSRange) -> NSRange?
}

extension _NSRange {
  init<R>(_ region: R) where R : RangeExpression, R.Bound : FixedWidthInteger
  init<R, S>(_ region: R, in target: S) where R : RangeExpression, S : StringProtocol, R.Bound == String.Index
  @available(swift, deprecated: 4, renamed: "Range.init(_:)")
  func toRange() -> Range<Int>?
}

extension _NSRange : CustomReflectable {
}

extension _NSRange : _CustomPlaygroundQuickLookable {
}

extension _NSRange : Codable {
}

extension _NSRange : _ObjectiveCBridgeable {
}
typealias NSRange = _NSRange
typealias NSRangePointer = UnsafeMutablePointer<NSRange>
func NSMakeRange(_ loc: Int, _ len: Int) -> NSRange
func NSMaxRange(_ range: NSRange) -> Int
func NSLocationInRange(_ loc: Int, _ range: NSRange) -> Bool
func NSEqualRanges(_ range1: NSRange, _ range2: NSRange) -> Bool
func NSUnionRange(_ range1: NSRange, _ range2: NSRange) -> NSRange
func NSIntersectionRange(_ range1: NSRange, _ range2: NSRange) -> NSRange
func NSStringFromRange(_ range: NSRange) -> String
func NSRangeFromString(_ aString: String) -> NSRange
extension NSValue {
  /*not inherited*/ init(range: NSRange)
  var rangeValue: NSRange { get }
}
