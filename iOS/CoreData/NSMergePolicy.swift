
@available(iOS 3.0, *)
var NSErrorMergePolicy: AnyObject
@available(iOS 3.0, *)
var NSMergeByPropertyStoreTrumpMergePolicy: AnyObject
@available(iOS 3.0, *)
var NSMergeByPropertyObjectTrumpMergePolicy: AnyObject
@available(iOS 3.0, *)
var NSOverwriteMergePolicy: AnyObject
@available(iOS 3.0, *)
var NSRollbackMergePolicy: AnyObject
enum NSMergePolicyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case errorMergePolicyType
  case mergeByPropertyStoreTrumpMergePolicyType
  case mergeByPropertyObjectTrumpMergePolicyType
  case overwriteMergePolicyType
  case rollbackMergePolicyType
}
@available(iOS 5.0, *)
class NSMergeConflict : NSObject {
  var sourceObject: NSManagedObject { get }
  var objectSnapshot: [String : Any]? { get }
  var cachedSnapshot: [String : Any]? { get }
  var persistedSnapshot: [String : Any]? { get }
  var newVersionNumber: Int { get }
  var oldVersionNumber: Int { get }
  init(source srcObject: NSManagedObject, newVersion newvers: Int, oldVersion oldvers: Int, cachedSnapshot cachesnap: [String : Any]?, persistedSnapshot persnap: [String : Any]?)
}
@available(iOS 9.0, *)
class NSConstraintConflict : NSObject {
  var constraint: [String] { get }
  var constraintValues: [String : Any] { get }
  var databaseObject: NSManagedObject? { get }
  var databaseSnapshot: [String : Any]? { get }
  var conflictingObjects: [NSManagedObject] { get }
  var conflictingSnapshots: [[AnyHashable : Any]] { get }
  init(constraint contraint: [String], database databaseObject: NSManagedObject?, databaseSnapshot: [AnyHashable : Any]?, conflicting conflictingObjects: [NSManagedObject], conflictingSnapshots: [Any])
}
@available(iOS 5.0, *)
class NSMergePolicy : NSObject {
  @available(iOS 10.0, *)
  class var error: NSMergePolicy { get }
  @available(iOS 10.0, *)
  class var rollback: NSMergePolicy { get }
  @available(iOS 10.0, *)
  class var overwrite: NSMergePolicy { get }
  @available(iOS 10.0, *)
  class var mergeByPropertyObjectTrump: NSMergePolicy { get }
  @available(iOS 10.0, *)
  class var mergeByPropertyStoreTrump: NSMergePolicy { get }
  var mergeType: NSMergePolicyType { get }
  init(merge ty: NSMergePolicyType)
  func resolve(mergeConflicts list: [Any]) throws
  @available(iOS 9.0, *)
  func resolve(optimisticLockingConflicts list: [NSMergeConflict]) throws
  @available(iOS 9.0, *)
  func resolve(constraintConflicts list: [NSConstraintConflict]) throws
}
