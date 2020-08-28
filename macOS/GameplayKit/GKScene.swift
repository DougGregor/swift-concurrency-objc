
protocol GKSceneRootNodeType : NSObjectProtocol {
}
@available(macOS 10.12, *)
class GKScene : NSObject, NSCopying, NSSecureCoding {
  convenience init?(fileNamed filename: String)
  convenience init?(fileNamed filename: String, rootNode: GKSceneRootNodeType)
  var entities: [GKEntity] { get }
  var rootNode: GKSceneRootNodeType?
  var graphs: [String : GKGraph] { get }
  func addEntity(_ entity: GKEntity)
  func removeEntity(_ entity: GKEntity)
  func addGraph(_ graph: GKGraph, name: String)
  func removeGraph(_ name: String)
}
