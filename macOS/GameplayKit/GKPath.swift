
@available(macOS 10.11, *)
class GKPath : NSObject {
  var radius: Float
  var numPoints: Int { get }
  var isCyclical: Bool
  init(__points points: UnsafeMutablePointer<vector_float2>, count: Int, radius: Float, cyclical: Bool)
  @available(macOS 10.12, *)
  init(__float3Points points: UnsafeMutablePointer<vector_float3>, count: Int, radius: Float, cyclical: Bool)
  init(graphNodes: [GKGraphNode], radius: Float)
  @available(macOS, introduced: 10.11, deprecated: 10.12)
  func point(at index: Int) -> vector_float2
  @available(macOS 10.12, *)
  func float2(at index: Int) -> vector_float2
  @available(macOS 10.12, *)
  func float3(at index: Int) -> vector_float3
}

@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
extension GKPath {
  convenience init(points: [SIMD2<Float>], radius: Float, cyclical: Bool)
}

@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
extension GKPath {
  convenience init(points: [SIMD3<Float>], radius: Float, cyclical: Bool)
}
