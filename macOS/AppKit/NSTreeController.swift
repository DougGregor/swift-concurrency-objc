
class NSTreeController : NSObjectController {
  func rearrangeObjects()
  var arrangedObjects: NSTreeNode { get }
  var childrenKeyPath: String?
  var countKeyPath: String?
  var leafKeyPath: String?
  var sortDescriptors: [NSSortDescriptor]
  @IBAction func addChild(_ sender: Any?)
  @IBAction func insert(_ sender: Any?)
  @IBAction func insertChild(_ sender: Any?)
  var canInsert: Bool { get }
  var canInsertChild: Bool { get }
  var canAddChild: Bool { get }
  func insert(_ object: Any?, atArrangedObjectIndexPath indexPath: IndexPath)
  func insert(_ objects: [Any], atArrangedObjectIndexPaths indexPaths: [IndexPath])
  func removeObject(atArrangedObjectIndexPath indexPath: IndexPath)
  func removeObjects(atArrangedObjectIndexPaths indexPaths: [IndexPath])
  var avoidsEmptySelection: Bool
  var preservesSelection: Bool
  var selectsInsertedObjects: Bool
  var alwaysUsesMultipleValuesMarker: Bool
  func setSelectionIndexPaths(_ indexPaths: [IndexPath]) -> Bool
  var selectionIndexPaths: [IndexPath] { get }
  func setSelectionIndexPath(_ indexPath: IndexPath?) -> Bool
  var selectionIndexPath: IndexPath? { get }
  func addSelectionIndexPaths(_ indexPaths: [IndexPath]) -> Bool
  func removeSelectionIndexPaths(_ indexPaths: [IndexPath]) -> Bool
  @available(macOS 10.5, *)
  var selectedNodes: [NSTreeNode] { get }
  @available(macOS 10.5, *)
  func move(_ node: NSTreeNode, to indexPath: IndexPath)
  @available(macOS 10.5, *)
  func move(_ nodes: [NSTreeNode], to startingIndexPath: IndexPath)
  @available(macOS 10.5, *)
  func childrenKeyPath(for node: NSTreeNode) -> String?
  @available(macOS 10.5, *)
  func countKeyPath(for node: NSTreeNode) -> String?
  @available(macOS 10.5, *)
  func leafKeyPath(for node: NSTreeNode) -> String?
}
