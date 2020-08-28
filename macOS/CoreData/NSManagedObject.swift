
struct NSSnapshotEventType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var undoInsertion: NSSnapshotEventType { get }
  static var undoDeletion: NSSnapshotEventType { get }
  static var undoUpdate: NSSnapshotEventType { get }
  static var rollback: NSSnapshotEventType { get }
  static var refresh: NSSnapshotEventType { get }
  static var mergePolicy: NSSnapshotEventType { get }
}
@available(macOS 10.4, *)
class NSManagedObject : NSObject {
  @available(macOS 10.6, *)
  class var contextShouldIgnoreUnmodeledPropertyChanges: Bool { get }
  @available(macOS 10.12, *)
  class func entity() -> NSEntityDescription
  @available(macOS 10.12, *)
  class func fetchRequest() -> NSFetchRequest<NSFetchRequestResult>
  init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?)
  @available(macOS 10.12, *)
  convenience init(context moc: NSManagedObjectContext)
  unowned(unsafe) var managedObjectContext: @sil_unmanaged NSManagedObjectContext? { get }
  var entity: NSEntityDescription { get }
  var objectID: NSManagedObjectID { get }
  var isInserted: Bool { get }
  var isUpdated: Bool { get }
  var isDeleted: Bool { get }
  @available(macOS 10.7, *)
  var hasChanges: Bool { get }
  @available(macOS 10.9, *)
  var hasPersistentChangedValues: Bool { get }
  var isFault: Bool { get }
  @available(macOS 10.5, *)
  func hasFault(forRelationshipNamed key: String) -> Bool
  @available(macOS 10.11, *)
  func objectIDs(forRelationshipNamed key: String) -> [NSManagedObjectID]
  @available(macOS 10.5, *)
  var faultingState: Int { get }
  func willAccessValue(forKey key: String?)
  func didAccessValue(forKey key: String?)
  func awakeFromFetch()
  func awakeFromInsert()
  @available(macOS 10.6, *)
  func awake(fromSnapshotEvents flags: NSSnapshotEventType)
  @available(macOS 10.6, *)
  func prepareForDeletion()
  func willSave()
  func didSave()
  @available(macOS 10.5, *)
  func willTurnIntoFault()
  func didTurnIntoFault()
  func primitiveValue(forKey key: String) -> Any?
  func setPrimitiveValue(_ value: Any?, forKey key: String)
  func committedValues(forKeys keys: [String]?) -> [String : Any]
  func changedValues() -> [String : Any]
  @available(macOS 10.7, *)
  func changedValuesForCurrentEvent() -> [String : Any]
  func validateForDelete() throws
  func validateForInsert() throws
  func validateForUpdate() throws
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension NSManagedObject : ObservableObject {
}
