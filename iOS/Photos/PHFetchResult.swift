
@available(iOS 8, *)
class PHFetchResult<ObjectType> : NSObject, NSCopying, NSFastEnumeration where ObjectType : AnyObject {
  @available(iOS 8, *)
  var count: Int { get }
  @available(iOS 8, *)
  func object(at index: Int) -> ObjectType
  subscript(idx: Int) -> ObjectType { get }
  @available(iOS 8, *)
  func contains(_ anObject: ObjectType) -> Bool
  @available(iOS 8, *)
  func index(of anObject: ObjectType) -> Int
  @available(iOS 8, *)
  func index(of anObject: ObjectType, in range: NSRange) -> Int
  @available(iOS 8, *)
  var firstObject: ObjectType? { get }
  @available(iOS 8, *)
  var lastObject: ObjectType? { get }
  @available(iOS 8, *)
  func objects(at indexes: IndexSet) -> [ObjectType]
  @available(iOS 8, *)
  func enumerateObjects(_ block: @escaping (ObjectType, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 8, *)
  func enumerateObjects(options opts: NSEnumerationOptions = [], using block: @escaping (ObjectType, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 8, *)
  func enumerateObjects(at s: IndexSet, options opts: NSEnumerationOptions = [], using block: @escaping (ObjectType, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 8, *)
  func countOfAssets(with mediaType: PHAssetMediaType) -> Int
}
