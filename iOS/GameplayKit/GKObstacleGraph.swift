
@available(iOS 9.0, *)
class GKObstacleGraph<NodeType> : GKGraph where NodeType : GKGraphNode2D {
  var obstacles: [GKPolygonObstacle] { get }
  var bufferRadius: Float { get }
  init(obstacles: [GKPolygonObstacle], bufferRadius: Float)
  init(obstacles: [GKPolygonObstacle], bufferRadius: Float, nodeClass: AnyClass)
  func connectUsingObstacles(node: NodeType)
  func connectUsingObstacles(node: NodeType, ignoring obstaclesToIgnore: [GKPolygonObstacle])
  func connectUsingObstacles(node: NodeType, ignoringBufferRadiusOf obstaclesBufferRadiusToIgnore: [GKPolygonObstacle])
  func addObstacles(_ obstacles: [GKPolygonObstacle])
  func removeObstacles(_ obstacles: [GKPolygonObstacle])
  func removeAllObstacles()
  func nodes(for obstacle: GKPolygonObstacle) -> [NodeType]
  func lockConnection(from startNode: NodeType, to endNode: NodeType)
  func unlockConnection(from startNode: NodeType, to endNode: NodeType)
  func isConnectionLocked(from startNode: NodeType, to endNode: NodeType) -> Bool
  func classForGenericArgument(at index: Int) -> AnyClass
  convenience init(nodes: [GKGraphNode])
}
