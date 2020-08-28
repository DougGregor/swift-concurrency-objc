
@available(iOS 9.0, *)
class GKGridGraph<NodeType> : GKGraph where NodeType : GKGridGraphNode {
  var gridOrigin: vector_int2 { get }
  var gridWidth: Int { get }
  var gridHeight: Int { get }
  var diagonalsAllowed: Bool { get }
  init(fromGridStartingAt position: vector_int2, width: Int32, height: Int32, diagonalsAllowed: Bool)
  init(fromGridStartingAt position: vector_int2, width: Int32, height: Int32, diagonalsAllowed: Bool, nodeClass: AnyClass)
  func node(atGridPosition position: vector_int2) -> NodeType?
  func connectToAdjacentNodes(node: GKGridGraphNode)
  func classForGenericArgument(at index: Int) -> AnyClass
  convenience init(nodes: [GKGraphNode])
}
