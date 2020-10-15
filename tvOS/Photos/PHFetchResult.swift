
@available(tvOS 10, *)
class PHFetchResult<ObjectType> : NSObject, NSCopying, NSFastEnumeration where ObjectType : AnyObject {
  @available(tvOS 10, *)
  var count: Int { get }
  @available(tvOS 10, *)
  func object(at index: Int) -> ObjectType
  subscript(idx: Int) -> ObjectType { get }
  @available(tvOS 10, *)
  func contains(_ anObject: ObjectType) -> Bool
  @available(tvOS 10, *)
  func index(of anObject: ObjectType) -> Int
  @available(tvOS 10, *)
  func index(of anObject: ObjectType, in range: NSRange) -> Int
  @available(tvOS 10, *)
  var firstObject: ObjectType? { get }
  @available(tvOS 10, *)
  var lastObject: ObjectType? { get }
  @available(tvOS 10, *)
  func objects(at indexes: IndexSet) -> [ObjectType]
  @available(tvOS 10, *)
  func enumerateObjects(_ block: @escaping (ObjectType, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 10, *)
  func enumerateObjects(options opts: NSEnumerationOptions = [], using block: @escaping (ObjectType, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 10, *)
  func enumerateObjects(at s: IndexSet, options opts: NSEnumerationOptions = [], using block: @escaping (ObjectType, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 10, *)
  func countOfAssets(with mediaType: PHAssetMediaType) -> Int
}
