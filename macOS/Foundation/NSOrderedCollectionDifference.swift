
@available(macOS 10.15, *)
struct NSOrderedCollectionDifferenceCalculationOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var omitInsertedObjects: NSOrderedCollectionDifferenceCalculationOptions { get }
  static var omitRemovedObjects: NSOrderedCollectionDifferenceCalculationOptions { get }
  static var inferMoves: NSOrderedCollectionDifferenceCalculationOptions { get }
}
@available(macOS 10.15, *)
class NSOrderedCollectionDifference : NSObject, NSFastEnumeration {
  convenience init(changes: [NSOrderedCollectionChange])
  init(insert inserts: IndexSet, insertedObjects: [Any]?, remove removes: IndexSet, removedObjects: [Any]?, additionalChanges changes: [NSOrderedCollectionChange])
  convenience init(insert inserts: IndexSet, insertedObjects: [Any]?, remove removes: IndexSet, removedObjects: [Any]?)
  @available(macOS 10.15, *)
  var insertions: [NSOrderedCollectionChange] { get }
  @available(macOS 10.15, *)
  var removals: [NSOrderedCollectionChange] { get }
  var hasChanges: Bool { get }
  func transformingChanges(_ block: (NSOrderedCollectionChange) -> NSOrderedCollectionChange) -> CollectionDifference<Any>
  @available(macOS 10.15, *)
  func inverse() -> Self
}
