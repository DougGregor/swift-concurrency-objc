
struct GKMeshGraphTriangulationMode : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var vertices: GKMeshGraphTriangulationMode { get }
  static var centers: GKMeshGraphTriangulationMode { get }
  static var edgeMidpoints: GKMeshGraphTriangulationMode { get }
}
@available(iOS 10.0, *)
class GKMeshGraph<NodeType> : GKGraph where NodeType : GKGraphNode2D {
  var obstacles: [GKPolygonObstacle] { get }
  var bufferRadius: Float { get }
  var triangulationMode: GKMeshGraphTriangulationMode
  var triangleCount: Int { get }
  init(bufferRadius: Float, minCoordinate min: vector_float2, maxCoordinate max: vector_float2, nodeClass: AnyClass)
  init(bufferRadius: Float, minCoordinate min: vector_float2, maxCoordinate max: vector_float2)
  func addObstacles(_ obstacles: [GKPolygonObstacle])
  func removeObstacles(_ obstacles: [GKPolygonObstacle])
  func connectUsingObstacles(node: NodeType)
  func triangulate()
  func triangle(at index: Int) -> GKTriangle
  func classForGenericArgument(at index: Int) -> AnyClass
  convenience init(nodes: [GKGraphNode])
}
