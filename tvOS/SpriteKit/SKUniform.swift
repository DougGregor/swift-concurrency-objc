
@available(tvOS 8.0, *)
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
@available(tvOS 8.0, *)
class SKUniform : NSObject, NSCopying, NSSecureCoding {
  var name: String { get }
  var uniformType: SKUniformType { get }
  var textureValue: SKTexture?
  var floatValue: Float
  @available(tvOS 10.0, *)
  var vectorFloat2Value: vector_float2
  @available(tvOS 10.0, *)
  var vectorFloat3Value: vector_float3
  @available(tvOS 10.0, *)
  var vectorFloat4Value: vector_float4
  @available(tvOS 10.0, *)
  var matrixFloat2x2Value: matrix_float2x2
  @available(tvOS 10.0, *)
  var matrixFloat3x3Value: matrix_float3x3
  @available(tvOS 10.0, *)
  var matrixFloat4x4Value: matrix_float4x4
  init(name: String)
  init(name: String, texture: SKTexture?)
  init(name: String, float value: Float)
  @available(tvOS 10.0, *)
  init(name: String, vectorFloat2 value: vector_float2)
  @available(tvOS 10.0, *)
  init(name: String, vectorFloat3 value: vector_float3)
  @available(tvOS 10.0, *)
  init(name: String, vectorFloat4 value: vector_float4)
  @available(tvOS 10.0, *)
  init(name: String, matrixFloat2x2 value: matrix_float2x2)
  @available(tvOS 10.0, *)
  init(name: String, matrixFloat3x3 value: matrix_float3x3)
  @available(tvOS 10.0, *)
  init(name: String, matrixFloat4x4 value: matrix_float4x4)
  @available(tvOS, introduced: 7.0, deprecated: 10.0)
  var floatVector2Value: GLKVector2
  @available(tvOS, introduced: 7.0, deprecated: 10.0)
  var floatVector3Value: GLKVector3
  @available(tvOS, introduced: 7.0, deprecated: 10.0)
  var floatVector4Value: GLKVector4
  @available(tvOS, introduced: 7.0, deprecated: 10.0)
  var floatMatrix2Value: GLKMatrix2
  @available(tvOS, introduced: 7.0, deprecated: 10.0)
  var floatMatrix3Value: GLKMatrix3
  @available(tvOS, introduced: 7.0, deprecated: 10.0)
  var floatMatrix4Value: GLKMatrix4
  @available(tvOS, introduced: 7.0, deprecated: 10.0)
  init(name: String, float value: GLKVector2)
  @available(tvOS, introduced: 7.0, deprecated: 10.0)
  init(name: String, float value: GLKVector3)
  @available(tvOS, introduced: 7.0, deprecated: 10.0)
  init(name: String, float value: GLKVector4)
  @available(tvOS, introduced: 7.0, deprecated: 10.0)
  init(name: String, float value: GLKMatrix2)
  @available(tvOS, introduced: 7.0, deprecated: 10.0)
  init(name: String, float value: GLKMatrix3)
  @available(tvOS, introduced: 7.0, deprecated: 10.0)
  init(name: String, float value: GLKMatrix4)
}
