
@available(tvOS 10, *)
class PHChange : NSObject {
  @available(tvOS 10, *)
  func __changeDetails(for object: PHObject) -> PHObjectChangeDetails<PHObject>?
  @available(tvOS 10, *)
  func __changeDetails(for object: PHFetchResult<AnyObject>) -> PHFetchResultChangeDetails<PHObject>?
}

@available(iOS 8.0, tvOS 10.0, macOS 10.13, *)
extension PHChange {
  func changeDetails<T>(for object: T) -> PHObjectChangeDetails<T>? where T : PHObject
  func changeDetails<T>(for fetchResult: PHFetchResult<T>) -> PHFetchResultChangeDetails<T>? where T : PHObject
}
@available(tvOS 10, *)
class PHObjectChangeDetails<ObjectType> : NSObject where ObjectType : PHObject {
  @available(tvOS 10, *)
  var objectBeforeChanges: ObjectType { get }
  @available(tvOS 10, *)
  var objectAfterChanges: ObjectType? { get }
  @available(tvOS 10, *)
  var assetContentChanged: Bool { get }
  @available(tvOS 10, *)
  var objectWasDeleted: Bool { get }
}
@available(tvOS 10, *)
class PHFetchResultChangeDetails<ObjectType> : NSObject where ObjectType : PHObject {
  @available(tvOS 10, *)
  var fetchResultBeforeChanges: PHFetchResult<ObjectType> { get }
  @available(tvOS 10, *)
  var fetchResultAfterChanges: PHFetchResult<ObjectType> { get }
  @available(tvOS 10, *)
  var hasIncrementalChanges: Bool { get }
  @available(tvOS 10, *)
  var removedIndexes: IndexSet? { get }
  @available(tvOS 10, *)
  var removedObjects: [ObjectType] { get }
  @available(tvOS 10, *)
  var insertedIndexes: IndexSet? { get }
  @available(tvOS 10, *)
  var insertedObjects: [ObjectType] { get }
  @available(tvOS 10, *)
  var changedIndexes: IndexSet? { get }
  @available(tvOS 10, *)
  var changedObjects: [ObjectType] { get }
  @available(tvOS 10, *)
  func enumerateMoves(_ handler: @escaping (Int, Int) -> Void)
  @available(tvOS 10, *)
  var hasMoves: Bool { get }
  @available(tvOS 10, *)
  convenience init(from fromResult: PHFetchResult<ObjectType>, to toResult: PHFetchResult<ObjectType>, changedObjects: [ObjectType])
}
