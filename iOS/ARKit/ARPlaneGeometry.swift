
@available(iOS 11.3, *)
class ARPlaneGeometry : NSObject, NSSecureCoding {
  var __vertexCount: Int { get }
  var __vertices: UnsafePointer<simd_float3> { get }
  var __textureCoordinateCount: Int { get }
  var __textureCoordinates: UnsafePointer<simd_float2> { get }
  var triangleCount: Int { get }
  var __triangleIndices: UnsafePointer<Int16> { get }
  var __boundaryVertexCount: Int { get }
  var __boundaryVertices: UnsafePointer<simd_float3> { get }
}

@available(iOS 11.3, *)
extension ARPlaneGeometry {
  @nonobjc var vertices: [vector_float3] { get }
  @nonobjc var textureCoordinates: [vector_float2] { get }
  @nonobjc var triangleIndices: [Int16] { get }
  @nonobjc var boundaryVertices: [vector_float3] { get }
}
