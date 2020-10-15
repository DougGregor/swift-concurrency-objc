
class NSIndexSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init(indexesIn range: NSRange)
  init(indexSet: IndexSet)
  convenience init(index value: Int)
  func isEqual(to indexSet: IndexSet) -> Bool
  var count: Int { get }
  var firstIndex: Int { get }
  var lastIndex: Int { get }
  func indexGreaterThanIndex(_ value: Int) -> Int
  func indexLessThanIndex(_ value: Int) -> Int
  func indexGreaterThanOrEqual(to value: Int) -> Int
  func indexLessThanOrEqual(to value: Int) -> Int
  func getIndexes(_ indexBuffer: UnsafeMutablePointer<Int>, maxCount bufferSize: Int, inIndexRange range: NSRangePointer?) -> Int
  @available(iOS 2.0, *)
  func countOfIndexes(in range: NSRange) -> Int
  func contains(_ value: Int) -> Bool
  func contains(in range: NSRange) -> Bool
  func contains(_ indexSet: IndexSet) -> Bool
  func intersects(in range: NSRange) -> Bool
  @available(iOS 4.0, *)
  func enumerate(_ block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerate(options opts: NSEnumerationOptions = [], using block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerate(in range: NSRange, options opts: NSEnumerationOptions = [], using block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func index(passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(iOS 4.0, *)
  func index(options opts: NSEnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(iOS 4.0, *)
  func index(in range: NSRange, options opts: NSEnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(iOS 4.0, *)
  func indexes(passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(iOS 4.0, *)
  func indexes(options opts: NSEnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(iOS 4.0, *)
  func indexes(in range: NSRange, options opts: NSEnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(iOS 5.0, *)
  func enumerateRanges(_ block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 5.0, *)
  func enumerateRanges(options opts: NSEnumerationOptions = [], using block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 5.0, *)
  func enumerateRanges(in range: NSRange, options opts: NSEnumerationOptions = [], using block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}

extension NSIndexSet : _HasCustomAnyHashableRepresentation {
}

extension NSIndexSet : Sequence {
}
class NSMutableIndexSet : NSIndexSet {
  func add(_ indexSet: IndexSet)
  func remove(_ indexSet: IndexSet)
  func removeAllIndexes()
  func add(_ value: Int)
  func remove(_ value: Int)
  func add(in range: NSRange)
  func remove(in range: NSRange)
  func shiftIndexesStarting(at index: Int, by delta: Int)
}
