
var __FOUNDATION_NSMAPTABLE__: Int32 { get }
@available(watchOS 2.0, *)
let NSMapTableStrongMemory: NSPointerFunctions.Options
@available(watchOS 2.0, *)
let NSMapTableCopyIn: NSPointerFunctions.Options
@available(watchOS 2.0, *)
let NSMapTableObjectPointerPersonality: NSPointerFunctions.Options
@available(watchOS 2.0, *)
let NSMapTableWeakMemory: NSPointerFunctions.Options
typealias NSMapTableOptions = Int
@available(watchOS 2.0, *)
class NSMapTable<KeyType, ObjectType> : NSObject, NSCopying, NSSecureCoding, NSFastEnumeration where KeyType : AnyObject, ObjectType : AnyObject {
  init(keyOptions: NSPointerFunctions.Options = [], valueOptions: NSPointerFunctions.Options = [], capacity initialCapacity: Int)
  init(keyPointerFunctions keyFunctions: NSPointerFunctions, valuePointerFunctions valueFunctions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(keyOptions: NSPointerFunctions.Options = [], valueOptions: NSPointerFunctions.Options = [])
  @available(watchOS 2.0, *)
  class func strongToStrongObjects() -> NSMapTable<KeyType, ObjectType>
  @available(watchOS 2.0, *)
  class func weakToStrongObjects() -> NSMapTable<KeyType, ObjectType>
  @available(watchOS 2.0, *)
  class func strongToWeakObjects() -> NSMapTable<KeyType, ObjectType>
  @available(watchOS 2.0, *)
  class func weakToWeakObjects() -> NSMapTable<KeyType, ObjectType>
  @NSCopying var keyPointerFunctions: NSPointerFunctions { get }
  @NSCopying var valuePointerFunctions: NSPointerFunctions { get }
  func object(forKey aKey: KeyType?) -> ObjectType?
  func removeObject(forKey aKey: KeyType?)
  func setObject(_ anObject: ObjectType?, forKey aKey: KeyType?)
  var count: Int { get }
  func keyEnumerator() -> NSEnumerator
  func objectEnumerator() -> NSEnumerator?
  func removeAllObjects()
  func dictionaryRepresentation() -> [AnyHashable : ObjectType]
}
struct NSMapEnumerator {
  var _pi: Int
  var _si: Int
  var _bs: UnsafeMutableRawPointer?
  init()
  init(_pi: Int, _si: Int, _bs: UnsafeMutableRawPointer?)
}
func NSFreeMapTable(_ table: NSMapTable<AnyObject, AnyObject>)
func NSResetMapTable(_ table: NSMapTable<AnyObject, AnyObject>)
func NSCompareMapTables(_ table1: NSMapTable<AnyObject, AnyObject>, _ table2: NSMapTable<AnyObject, AnyObject>) -> Bool
func NSCopyMapTableWithZone(_ table: NSMapTable<AnyObject, AnyObject>, _ zone: NSZone?) -> NSMapTable<AnyObject, AnyObject>
func NSMapMember(_ table: NSMapTable<AnyObject, AnyObject>, _ key: UnsafeRawPointer, _ originalKey: UnsafeMutablePointer<UnsafeMutableRawPointer?>?, _ value: UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> Bool
func NSMapGet(_ table: NSMapTable<AnyObject, AnyObject>, _ key: UnsafeRawPointer?) -> UnsafeMutableRawPointer?
func NSMapInsert(_ table: NSMapTable<AnyObject, AnyObject>, _ key: UnsafeRawPointer?, _ value: UnsafeRawPointer?)
func NSMapInsertKnownAbsent(_ table: NSMapTable<AnyObject, AnyObject>, _ key: UnsafeRawPointer?, _ value: UnsafeRawPointer?)
func NSMapInsertIfAbsent(_ table: NSMapTable<AnyObject, AnyObject>, _ key: UnsafeRawPointer?, _ value: UnsafeRawPointer?) -> UnsafeMutableRawPointer?
func NSMapRemove(_ table: NSMapTable<AnyObject, AnyObject>, _ key: UnsafeRawPointer?)
func NSEnumerateMapTable(_ table: NSMapTable<AnyObject, AnyObject>) -> NSMapEnumerator
func NSNextMapEnumeratorPair(_ enumerator: UnsafeMutablePointer<NSMapEnumerator>, _ key: UnsafeMutablePointer<UnsafeMutableRawPointer?>?, _ value: UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> Bool
func NSEndMapTableEnumeration(_ enumerator: UnsafeMutablePointer<NSMapEnumerator>)
func NSCountMapTable(_ table: NSMapTable<AnyObject, AnyObject>) -> Int
func NSStringFromMapTable(_ table: NSMapTable<AnyObject, AnyObject>) -> String
func NSAllMapTableKeys(_ table: NSMapTable<AnyObject, AnyObject>) -> [Any]
func NSAllMapTableValues(_ table: NSMapTable<AnyObject, AnyObject>) -> [Any]
struct NSMapTableKeyCallBacks {
  var hash: (@convention(c) (NSMapTable<AnyObject, AnyObject>, UnsafeRawPointer) -> Int)?
  var isEqual: (@convention(c) (NSMapTable<AnyObject, AnyObject>, UnsafeRawPointer, UnsafeRawPointer) -> ObjCBool)?
  var retain: (@convention(c) (NSMapTable<AnyObject, AnyObject>, UnsafeRawPointer) -> Void)?
  var release: (@convention(c) (NSMapTable<AnyObject, AnyObject>, UnsafeMutableRawPointer) -> Void)?
  var describe: (@convention(c) (NSMapTable<AnyObject, AnyObject>, UnsafeRawPointer) -> String?)?
  var notAKeyMarker: UnsafeRawPointer?
  init()
  init(hash: (@convention(c) (NSMapTable<AnyObject, AnyObject>, UnsafeRawPointer) -> Int)?, isEqual: (@convention(c) (NSMapTable<AnyObject, AnyObject>, UnsafeRawPointer, UnsafeRawPointer) -> ObjCBool)?, retain: (@convention(c) (NSMapTable<AnyObject, AnyObject>, UnsafeRawPointer) -> Void)?, release: (@convention(c) (NSMapTable<AnyObject, AnyObject>, UnsafeMutableRawPointer) -> Void)?, describe: (@convention(c) (NSMapTable<AnyObject, AnyObject>, UnsafeRawPointer) -> String?)?, notAKeyMarker: UnsafeRawPointer?)
}
struct NSMapTableValueCallBacks {
  var retain: (@convention(c) (NSMapTable<AnyObject, AnyObject>, UnsafeRawPointer) -> Void)?
  var release: (@convention(c) (NSMapTable<AnyObject, AnyObject>, UnsafeMutableRawPointer) -> Void)?
  var describe: (@convention(c) (NSMapTable<AnyObject, AnyObject>, UnsafeRawPointer) -> String?)?
  init()
  init(retain: (@convention(c) (NSMapTable<AnyObject, AnyObject>, UnsafeRawPointer) -> Void)?, release: (@convention(c) (NSMapTable<AnyObject, AnyObject>, UnsafeMutableRawPointer) -> Void)?, describe: (@convention(c) (NSMapTable<AnyObject, AnyObject>, UnsafeRawPointer) -> String?)?)
}
func NSCreateMapTableWithZone(_ keyCallBacks: NSMapTableKeyCallBacks, _ valueCallBacks: NSMapTableValueCallBacks, _ capacity: Int, _ zone: NSZone?) -> NSMapTable<AnyObject, AnyObject>
func NSCreateMapTable(_ keyCallBacks: NSMapTableKeyCallBacks, _ valueCallBacks: NSMapTableValueCallBacks, _ capacity: Int) -> NSMapTable<AnyObject, AnyObject>
let NSNonOwnedPointerMapKeyCallBacks: NSMapTableKeyCallBacks
let NSNonOwnedPointerOrNullMapKeyCallBacks: NSMapTableKeyCallBacks
let NSNonRetainedObjectMapKeyCallBacks: NSMapTableKeyCallBacks
let NSObjectMapKeyCallBacks: NSMapTableKeyCallBacks
let NSOwnedPointerMapKeyCallBacks: NSMapTableKeyCallBacks
@available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Not supported")
let NSIntMapKeyCallBacks: NSMapTableKeyCallBacks
let NSNonOwnedPointerMapValueCallBacks: NSMapTableValueCallBacks
let NSObjectMapValueCallBacks: NSMapTableValueCallBacks
let NSNonRetainedObjectMapValueCallBacks: NSMapTableValueCallBacks
let NSOwnedPointerMapValueCallBacks: NSMapTableValueCallBacks
@available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Not supported")
let NSIntMapValueCallBacks: NSMapTableValueCallBacks
