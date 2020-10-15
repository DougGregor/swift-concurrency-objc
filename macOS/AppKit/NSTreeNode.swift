
@available(macOS 10.5, *)
class NSTreeNode : NSObject {
  init(representedObject modelObject: Any?)
  var representedObject: Any? { get }
  var indexPath: IndexPath { get }
  var isLeaf: Bool { get }
  var children: [NSTreeNode]? { get }
  var mutableChildren: NSMutableArray { get }
  func descendant(at indexPath: IndexPath) -> NSTreeNode?
  weak var parent: @sil_weak NSTreeNode? { get }
  func sort(with sortDescriptors: [NSSortDescriptor], recursively: Bool)
}
