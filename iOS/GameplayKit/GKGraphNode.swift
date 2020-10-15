
@available(iOS 9.0, *)
class GKGraphNode : NSObject, NSSecureCoding {
  var connectedNodes: [GKGraphNode] { get }
  func addConnections(to nodes: [GKGraphNode], bidirectional: Bool)
  func removeConnections(to nodes: [GKGraphNode], bidirectional: Bool)
  func estimatedCost(to node: GKGraphNode) -> Float
  func cost(to node: GKGraphNode) -> Float
  func findPath(to goalNode: GKGraphNode) -> [GKGraphNode]
  func findPath(from startNode: GKGraphNode) -> [GKGraphNode]
}
@available(iOS 9.0, *)
class GKGraphNode2D : GKGraphNode {
  var position: vector_float2
  class func node(withPoint point: vector_float2) -> Self
  init(point: vector_float2)
}
@available(iOS 10.0, *)
class GKGraphNode3D : GKGraphNode {
  var position: vector_float3
  class func node(withPoint point: vector_float3) -> Self
  init(point: vector_float3)
}
@available(iOS 9.0, *)
class GKGridGraphNode : GKGraphNode {
  var gridPosition: vector_int2 { get }
  init(gridPosition: vector_int2)
}
