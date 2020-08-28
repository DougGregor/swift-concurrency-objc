
@available(iOS 8, *)
class PHChange : NSObject {
  @available(iOS 8, *)
  func __changeDetails(for object: PHObject) -> PHObjectChangeDetails<PHObject>?
  @available(iOS 8, *)
  func __changeDetails(for object: PHFetchResult<AnyObject>) -> PHFetchResultChangeDetails<PHObject>?
}

@available(iOS 8.0, tvOS 10.0, macOS 10.13, *)
extension PHChange {
  func changeDetails<T>(for object: T) -> PHObjectChangeDetails<T>? where T : PHObject
  func changeDetails<T>(for fetchResult: PHFetchResult<T>) -> PHFetchResultChangeDetails<T>? where T : PHObject
}
@available(iOS 8, *)
class PHObjectChangeDetails<ObjectType> : NSObject where ObjectType : PHObject {
  @available(iOS 8, *)
  var objectBeforeChanges: ObjectType { get }
  @available(iOS 8, *)
  var objectAfterChanges: ObjectType? { get }
  @available(iOS 8, *)
  var assetContentChanged: Bool { get }
  @available(iOS 8, *)
  var objectWasDeleted: Bool { get }
}
@available(iOS 8, *)
class PHFetchResultChangeDetails<ObjectType> : NSObject where ObjectType : PHObject {
  @available(iOS 8, *)
  var fetchResultBeforeChanges: PHFetchResult<ObjectType> { get }
  @available(iOS 8, *)
  var fetchResultAfterChanges: PHFetchResult<ObjectType> { get }
  @available(iOS 8, *)
  var hasIncrementalChanges: Bool { get }
  @available(iOS 8, *)
  var removedIndexes: IndexSet? { get }
  @available(iOS 8, *)
  var removedObjects: [ObjectType] { get }
  @available(iOS 8, *)
  var insertedIndexes: IndexSet? { get }
  @available(iOS 8, *)
  var insertedObjects: [ObjectType] { get }
  @available(iOS 8, *)
  var changedIndexes: IndexSet? { get }
  @available(iOS 8, *)
  var changedObjects: [ObjectType] { get }
  @available(iOS 8, *)
  func enumerateMoves(_ handler: @escaping (Int, Int) -> Void)
  @available(iOS 8, *)
  var hasMoves: Bool { get }
  @available(iOS 8, *)
  convenience init(from fromResult: PHFetchResult<ObjectType>, to toResult: PHFetchResult<ObjectType>, changedObjects: [ObjectType])
}
