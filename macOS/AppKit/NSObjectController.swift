
class NSObjectController : NSController {
  init(content: Any?)
  var content: Any?
  var selection: Any { get }
  var selectedObjects: [Any] { get }
  var automaticallyPreparesContent: Bool
  func prepareContent()
  var objectClass: AnyClass!
  func newObject() -> Any
  func addObject(_ object: Any)
  func removeObject(_ object: Any)
  var isEditable: Bool
  @IBAction func add(_ sender: Any?)
  var canAdd: Bool { get }
  @IBAction func remove(_ sender: Any?)
  var canRemove: Bool { get }
  func validateUserInterfaceItem(_ item: NSValidatedUserInterfaceItem) -> Bool
}
extension NSObjectController {
  var managedObjectContext: NSManagedObjectContext?
  var entityName: String?
  var fetchPredicate: NSPredicate?
  func fetch(with fetchRequest: NSFetchRequest<NSFetchRequestResult>?, merge: Bool) throws
  @IBAction func fetch(_ sender: Any?)
  @available(macOS 10.5, *)
  var usesLazyFetching: Bool
  @available(macOS 10.5, *)
  func defaultFetchRequest() -> NSFetchRequest<NSFetchRequestResult>
}
