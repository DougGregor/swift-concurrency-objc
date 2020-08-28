
@available(macOS 10.13, *)
class PHChange : NSObject {
  @available(macOS 10.13, *)
  func __changeDetails(for object: PHObject) -> PHObjectChangeDetails<PHObject>?
  @available(macOS 10.13, *)
  func __changeDetails(for object: PHFetchResult<AnyObject>) -> PHFetchResultChangeDetails<PHObject>?
}

@available(iOS 8.0, tvOS 10.0, macOS 10.13, *)
extension PHChange {
  @_alwaysEmitIntoClient func changeDetails<T>(for object: T) -> PHObjectChangeDetails<T>? where T : PHObject
  @_alwaysEmitIntoClient func changeDetails<T>(for fetchResult: PHFetchResult<T>) -> PHFetchResultChangeDetails<T>? where T : PHObject
  @_alwaysEmitIntoClient func changeDetails(for fetchResult: PHFetchResult<AnyObject>) -> PHFetchResultChangeDetails<PHObject>?
}
@available(macOS 10.13, *)
class PHObjectChangeDetails<ObjectType> : NSObject where ObjectType : PHObject {
  @available(macOS 10.13, *)
  var objectBeforeChanges: ObjectType { get }
  @available(macOS 10.13, *)
  var objectAfterChanges: ObjectType? { get }
  @available(macOS 10.13, *)
  var assetContentChanged: Bool { get }
  @available(macOS 10.13, *)
  var objectWasDeleted: Bool { get }
}
@available(macOS 10.13, *)
class PHFetchResultChangeDetails<ObjectType> : NSObject where ObjectType : PHObject {
  @available(macOS 10.13, *)
  var fetchResultBeforeChanges: PHFetchResult<ObjectType> { get }
  @available(macOS 10.13, *)
  var fetchResultAfterChanges: PHFetchResult<ObjectType> { get }
  @available(macOS 10.13, *)
  var hasIncrementalChanges: Bool { get }
  @available(macOS 10.13, *)
  var removedIndexes: IndexSet? { get }
  @available(macOS 10.13, *)
  var removedObjects: [ObjectType] { get }
  @available(macOS 10.13, *)
  var insertedIndexes: IndexSet? { get }
  @available(macOS 10.13, *)
  var insertedObjects: [ObjectType] { get }
  @available(macOS 10.13, *)
  var changedIndexes: IndexSet? { get }
  @available(macOS 10.13, *)
  var changedObjects: [ObjectType] { get }
  @available(macOS 10.13, *)
  func enumerateMoves(_ handler: @escaping (Int, Int) -> Void)
  @available(macOS 10.13, *)
  var hasMoves: Bool { get }
  @available(macOS 10.13, *)
  convenience init(from fromResult: PHFetchResult<ObjectType>, to toResult: PHFetchResult<ObjectType>, changedObjects: [ObjectType])
}
