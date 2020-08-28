
class NSArrayController : NSObjectController {
  func rearrangeObjects()
  @available(macOS 10.5, *)
  var automaticallyRearrangesObjects: Bool
  @available(macOS 10.5, *)
  var automaticRearrangementKeyPaths: [String]? { get }
  @available(macOS 10.5, *)
  func didChangeArrangementCriteria()
  var sortDescriptors: [NSSortDescriptor]
  var filterPredicate: NSPredicate?
  var clearsFilterPredicateOnInsertion: Bool
  func arrange(_ objects: [Any]) -> [Any]
  var arrangedObjects: Any { get }
  var avoidsEmptySelection: Bool
  var preservesSelection: Bool
  var selectsInsertedObjects: Bool
  var alwaysUsesMultipleValuesMarker: Bool
  func setSelectionIndexes(_ indexes: IndexSet) -> Bool
  var selectionIndexes: IndexSet { get }
  func setSelectionIndex(_ index: Int) -> Bool
  var selectionIndex: Int { get }
  func addSelectionIndexes(_ indexes: IndexSet) -> Bool
  func removeSelectionIndexes(_ indexes: IndexSet) -> Bool
  func setSelectedObjects(_ objects: [Any]) -> Bool
  func addSelectedObjects(_ objects: [Any]) -> Bool
  func removeSelectedObjects(_ objects: [Any]) -> Bool
  @IBAction func insert(_ sender: Any?)
  var canInsert: Bool { get }
  @IBAction func selectNext(_ sender: Any?)
  @IBAction func selectPrevious(_ sender: Any?)
  var canSelectNext: Bool { get }
  var canSelectPrevious: Bool { get }
  func add(contentsOf objects: [Any])
  func insert(_ object: Any, atArrangedObjectIndex index: Int)
  func insert(contentsOf objects: [Any], atArrangedObjectIndexes indexes: IndexSet)
  func remove(atArrangedObjectIndex index: Int)
  func remove(atArrangedObjectIndexes indexes: IndexSet)
  func remove(contentsOf objects: [Any])
}
