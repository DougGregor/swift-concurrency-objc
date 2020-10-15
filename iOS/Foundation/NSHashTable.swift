
var __FOUNDATION_NSHASHTABLE__: Int32 { get }
@available(iOS 6.0, *)
let NSHashTableStrongMemory: NSPointerFunctions.Options
@available(iOS 6.0, *)
let NSHashTableCopyIn: NSPointerFunctions.Options
@available(iOS 6.0, *)
let NSHashTableObjectPointerPersonality: NSPointerFunctions.Options
@available(iOS 6.0, *)
let NSHashTableWeakMemory: NSPointerFunctions.Options
typealias NSHashTableOptions = Int
@available(iOS 6.0, *)
class NSHashTable<ObjectType> : NSObject, NSCopying, NSSecureCoding, NSFastEnumeration where ObjectType : AnyObject {
  init(options: NSPointerFunctions.Options = [], capacity initialCapacity: Int)
  init(pointerFunctions functions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(options: NSPointerFunctions.Options = [])
  @available(iOS 6.0, *)
  class func weakObjects() -> NSHashTable<ObjectType>
  @NSCopying var pointerFunctions: NSPointerFunctions { get }
  var count: Int { get }
  func member(_ object: ObjectType?) -> ObjectType?
  func objectEnumerator() -> NSEnumerator
  func add(_ object: ObjectType?)
  func remove(_ object: ObjectType?)
  func removeAllObjects()
  var allObjects: [ObjectType] { get }
  var anyObject: ObjectType? { get }
  func contains(_ anObject: ObjectType?) -> Bool
  func intersects(_ other: NSHashTable<ObjectType>) -> Bool
  func isEqual(to other: NSHashTable<ObjectType>) -> Bool
  func isSubset(of other: NSHashTable<ObjectType>) -> Bool
  func intersect(_ other: NSHashTable<ObjectType>)
  func union(_ other: NSHashTable<ObjectType>)
  func minus(_ other: NSHashTable<ObjectType>)
  var setRepresentation: Set<AnyHashable> { get }
}
struct NSHashEnumerator {
  var _pi: Int
  var _si: Int
  var _bs: UnsafeMutableRawPointer?
  init()
  init(_pi: Int, _si: Int, _bs: UnsafeMutableRawPointer?)
}
func NSFreeHashTable(_ table: NSHashTable<AnyObject>)
func NSResetHashTable(_ table: NSHashTable<AnyObject>)
func NSCompareHashTables(_ table1: NSHashTable<AnyObject>, _ table2: NSHashTable<AnyObject>) -> Bool
func NSCopyHashTableWithZone(_ table: NSHashTable<AnyObject>, _ zone: NSZone?) -> NSHashTable<AnyObject>
func NSHashGet(_ table: NSHashTable<AnyObject>, _ pointer: UnsafeRawPointer?) -> UnsafeMutableRawPointer
func NSHashInsert(_ table: NSHashTable<AnyObject>, _ pointer: UnsafeRawPointer?)
func NSHashInsertKnownAbsent(_ table: NSHashTable<AnyObject>, _ pointer: UnsafeRawPointer?)
func NSHashInsertIfAbsent(_ table: NSHashTable<AnyObject>, _ pointer: UnsafeRawPointer?) -> UnsafeMutableRawPointer?
func NSHashRemove(_ table: NSHashTable<AnyObject>, _ pointer: UnsafeRawPointer?)
func NSEnumerateHashTable(_ table: NSHashTable<AnyObject>) -> NSHashEnumerator
func NSNextHashEnumeratorItem(_ enumerator: UnsafeMutablePointer<NSHashEnumerator>) -> UnsafeMutableRawPointer?
func NSEndHashTableEnumeration(_ enumerator: UnsafeMutablePointer<NSHashEnumerator>)
func NSCountHashTable(_ table: NSHashTable<AnyObject>) -> Int
func NSStringFromHashTable(_ table: NSHashTable<AnyObject>) -> String
func NSAllHashTableObjects(_ table: NSHashTable<AnyObject>) -> [Any]
struct NSHashTableCallBacks {
  var hash: (@convention(c) (NSHashTable<AnyObject>, UnsafeRawPointer) -> Int)?
  var isEqual: (@convention(c) (NSHashTable<AnyObject>, UnsafeRawPointer, UnsafeRawPointer) -> ObjCBool)?
  var retain: (@convention(c) (NSHashTable<AnyObject>, UnsafeRawPointer) -> Void)?
  var release: (@convention(c) (NSHashTable<AnyObject>, UnsafeMutableRawPointer) -> Void)?
  var describe: (@convention(c) (NSHashTable<AnyObject>, UnsafeRawPointer) -> String?)?
  init()
  init(hash: (@convention(c) (NSHashTable<AnyObject>, UnsafeRawPointer) -> Int)?, isEqual: (@convention(c) (NSHashTable<AnyObject>, UnsafeRawPointer, UnsafeRawPointer) -> ObjCBool)?, retain: (@convention(c) (NSHashTable<AnyObject>, UnsafeRawPointer) -> Void)?, release: (@convention(c) (NSHashTable<AnyObject>, UnsafeMutableRawPointer) -> Void)?, describe: (@convention(c) (NSHashTable<AnyObject>, UnsafeRawPointer) -> String?)?)
}
func NSCreateHashTableWithZone(_ callBacks: NSHashTableCallBacks, _ capacity: Int, _ zone: NSZone?) -> NSHashTable<AnyObject>
func NSCreateHashTable(_ callBacks: NSHashTableCallBacks, _ capacity: Int) -> NSHashTable<AnyObject>
let NSNonOwnedPointerHashCallBacks: NSHashTableCallBacks
let NSNonRetainedObjectHashCallBacks: NSHashTableCallBacks
let NSObjectHashCallBacks: NSHashTableCallBacks
let NSOwnedObjectIdentityHashCallBacks: NSHashTableCallBacks
let NSOwnedPointerHashCallBacks: NSHashTableCallBacks
let NSPointerToStructHashCallBacks: NSHashTableCallBacks
