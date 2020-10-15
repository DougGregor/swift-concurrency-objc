
@available(macOS 10.13, *)
class PHFetchResult<ObjectType> : NSObject, NSCopying, NSFastEnumeration where ObjectType : AnyObject {
  @available(macOS 10.13, *)
  var count: Int { get }
  @available(macOS 10.13, *)
  func object(at index: Int) -> ObjectType
  subscript(idx: Int) -> ObjectType { get }
  @available(macOS 10.13, *)
  func contains(_ anObject: ObjectType) -> Bool
  @available(macOS 10.13, *)
  func index(of anObject: ObjectType) -> Int
  @available(macOS 10.13, *)
  func index(of anObject: ObjectType, in range: NSRange) -> Int
  @available(macOS 10.13, *)
  var firstObject: ObjectType? { get }
  @available(macOS 10.13, *)
  var lastObject: ObjectType? { get }
  @available(macOS 10.13, *)
  func objects(at indexes: IndexSet) -> [ObjectType]
  @available(macOS 10.13, *)
  func enumerateObjects(_ block: @escaping (ObjectType, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(macOS 10.13, *)
  func enumerateObjects(options opts: NSEnumerationOptions = [], using block: @escaping (ObjectType, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(macOS 10.13, *)
  func enumerateObjects(at s: IndexSet, options opts: NSEnumerationOptions = [], using block: @escaping (ObjectType, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(macOS 10.13, *)
  func countOfAssets(with mediaType: PHAssetMediaType) -> Int
}
