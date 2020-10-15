
extension NSSpecifierTest {
  enum TestComparisonOperation : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case equal
    case lessThanOrEqual
    case lessThan
    case greaterThanOrEqual
    case greaterThan
    case beginsWith
    case endsWith
    case contains
  }
}
class NSScriptWhoseTest : NSObject, NSCoding {
  func isTrue() -> Bool
}
class NSLogicalTest : NSScriptWhoseTest {
  init(andTestWith subTests: [NSSpecifierTest])
  init(orTestWith subTests: [NSSpecifierTest])
  init(notTestWith subTest: NSScriptWhoseTest)
}
class NSSpecifierTest : NSScriptWhoseTest {
  init(objectSpecifier obj1: NSScriptObjectSpecifier?, comparisonOperator compOp: NSSpecifierTest.TestComparisonOperation, test obj2: Any?)
}
extension NSObject {
  class func isEqual(to object: Any?) -> Bool
  func isEqual(to object: Any?) -> Bool
  class func isLessThanOrEqual(to object: Any?) -> Bool
  func isLessThanOrEqual(to object: Any?) -> Bool
  class func isLessThan(_ object: Any?) -> Bool
  func isLessThan(_ object: Any?) -> Bool
  class func isGreaterThanOrEqual(to object: Any?) -> Bool
  func isGreaterThanOrEqual(to object: Any?) -> Bool
  class func isGreaterThan(_ object: Any?) -> Bool
  func isGreaterThan(_ object: Any?) -> Bool
  class func isNotEqual(to object: Any?) -> Bool
  func isNotEqual(to object: Any?) -> Bool
  class func doesContain(_ object: Any) -> Bool
  func doesContain(_ object: Any) -> Bool
  class func isLike(_ object: String) -> Bool
  func isLike(_ object: String) -> Bool
  class func isCaseInsensitiveLike(_ object: String) -> Bool
  func isCaseInsensitiveLike(_ object: String) -> Bool
}
extension NSObject {
  class func scriptingIsEqual(to object: Any) -> Bool
  func scriptingIsEqual(to object: Any) -> Bool
  class func scriptingIsLessThanOrEqual(to object: Any) -> Bool
  func scriptingIsLessThanOrEqual(to object: Any) -> Bool
  class func scriptingIsLessThan(_ object: Any) -> Bool
  func scriptingIsLessThan(_ object: Any) -> Bool
  class func scriptingIsGreaterThanOrEqual(to object: Any) -> Bool
  func scriptingIsGreaterThanOrEqual(to object: Any) -> Bool
  class func scriptingIsGreaterThan(_ object: Any) -> Bool
  func scriptingIsGreaterThan(_ object: Any) -> Bool
  class func scriptingBegins(with object: Any) -> Bool
  func scriptingBegins(with object: Any) -> Bool
  class func scriptingEnds(with object: Any) -> Bool
  func scriptingEnds(with object: Any) -> Bool
  class func scriptingContains(_ object: Any) -> Bool
  func scriptingContains(_ object: Any) -> Bool
}
