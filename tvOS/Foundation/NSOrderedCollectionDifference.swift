
@available(tvOS 13.0, *)
struct NSOrderedCollectionDifferenceCalculationOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var omitInsertedObjects: NSOrderedCollectionDifferenceCalculationOptions { get }
  static var omitRemovedObjects: NSOrderedCollectionDifferenceCalculationOptions { get }
  static var inferMoves: NSOrderedCollectionDifferenceCalculationOptions { get }
}
@available(tvOS 13.0, *)
class NSOrderedCollectionDifference : NSObject, NSFastEnumeration {
  convenience init(changes: [NSOrderedCollectionChange])
  init(insert inserts: IndexSet, insertedObjects: [Any]?, remove removes: IndexSet, removedObjects: [Any]?, additionalChanges changes: [NSOrderedCollectionChange])
  convenience init(insert inserts: IndexSet, insertedObjects: [Any]?, remove removes: IndexSet, removedObjects: [Any]?)
  @available(tvOS 13.0, *)
  var insertions: [NSOrderedCollectionChange] { get }
  @available(tvOS 13.0, *)
  var removals: [NSOrderedCollectionChange] { get }
  var hasChanges: Bool { get }
  func transformingChanges(_ block: (NSOrderedCollectionChange) -> NSOrderedCollectionChange) -> CollectionDifference<Any>
  @available(tvOS 13.0, *)
  func inverse() -> Self
}
