
@available(iOS 11.0, *)
class ARFaceGeometry : NSObject, NSSecureCoding, NSCopying {
  var __vertexCount: Int { get }
  var __vertices: UnsafePointer<simd_float3> { get }
  var __textureCoordinateCount: Int { get }
  var __textureCoordinates: UnsafePointer<simd_float2> { get }
  var triangleCount: Int { get }
  var __triangleIndices: UnsafePointer<Int16> { get }
  init?(blendShapes: [ARFaceAnchor.BlendShapeLocation : NSNumber])
}

@available(iOS 11.0, *)
extension ARFaceGeometry {
  @nonobjc var vertices: [vector_float3] { get }
  @nonobjc var textureCoordinates: [vector_float2] { get }
  @nonobjc var triangleIndices: [Int16] { get }
}
