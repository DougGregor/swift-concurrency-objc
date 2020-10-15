
@available(watchOS 2.0, *)
enum SKUniformType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case float
  case floatVector2
  case floatVector3
  case floatVector4
  case floatMatrix2
  case floatMatrix3
  case floatMatrix4
  case texture
}
@available(watchOS 2.0, *)
class SKUniform : NSObject, NSCopying, NSSecureCoding {
  var name: String { get }
  var uniformType: SKUniformType { get }
  var textureValue: SKTexture?
  var floatValue: Float
  @available(watchOS 3.0, *)
  var vectorFloat2Value: vector_float2
  @available(watchOS 3.0, *)
  var vectorFloat3Value: vector_float3
  @available(watchOS 3.0, *)
  var vectorFloat4Value: vector_float4
  @available(watchOS 3.0, *)
  var matrixFloat2x2Value: matrix_float2x2
  @available(watchOS 3.0, *)
  var matrixFloat3x3Value: matrix_float3x3
  @available(watchOS 3.0, *)
  var matrixFloat4x4Value: matrix_float4x4
  init(name: String)
  init(name: String, texture: SKTexture?)
  init(name: String, float value: Float)
  @available(watchOS 3.0, *)
  init(name: String, vectorFloat2 value: vector_float2)
  @available(watchOS 3.0, *)
  init(name: String, vectorFloat3 value: vector_float3)
  @available(watchOS 3.0, *)
  init(name: String, vectorFloat4 value: vector_float4)
  @available(watchOS 3.0, *)
  init(name: String, matrixFloat2x2 value: matrix_float2x2)
  @available(watchOS 3.0, *)
  init(name: String, matrixFloat3x3 value: matrix_float3x3)
  @available(watchOS 3.0, *)
  init(name: String, matrixFloat4x4 value: matrix_float4x4)
}
