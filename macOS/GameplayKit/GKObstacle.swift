
@available(macOS 10.11, *)
class GKObstacle : NSObject {
}
@available(macOS 10.11, *)
class GKCircleObstacle : GKObstacle {
  var radius: Float
  var position: vector_float2
  init(radius: Float)
}
@available(macOS 10.11, *)
class GKPolygonObstacle : GKObstacle, NSSecureCoding {
  var vertexCount: Int { get }
  init(__points points: UnsafeMutablePointer<vector_float2>, count numPoints: Int)
  func vertex(at index: Int) -> vector_float2
}

@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
extension GKPolygonObstacle {
  convenience init(points: [SIMD2<Float>])
}
@available(macOS 10.12, *)
class GKSphereObstacle : GKObstacle {
  var radius: Float
  var position: vector_float3
  init(radius: Float)
}
