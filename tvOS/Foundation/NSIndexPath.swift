
class NSIndexPath : NSObject, NSCopying, NSSecureCoding {
  init(indexes: UnsafePointer<Int>?, length: Int)
  convenience init(index: Int)
  func adding(_ index: Int) -> IndexPath
  func removingLastIndex() -> IndexPath
  func index(atPosition position: Int) -> Int
  var length: Int { get }
  @available(tvOS 9.0, *)
  func getIndexes(_ indexes: UnsafeMutablePointer<Int>, range positionRange: NSRange)
  func compare(_ otherObject: IndexPath) -> ComparisonResult
}

extension NSIndexPath : _HasCustomAnyHashableRepresentation {
}
extension NSIndexPath {
  @available(tvOS, introduced: 9.0, deprecated: 100000)
  func getIndexes(_ indexes: UnsafeMutablePointer<Int>)
}
