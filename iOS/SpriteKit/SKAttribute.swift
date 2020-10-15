
@available(iOS 9.0, *)
enum SKAttributeType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case float
  case vectorFloat2
  case vectorFloat3
  case vectorFloat4
  case halfFloat
  case vectorHalfFloat2
  case vectorHalfFloat3
  case vectorHalfFloat4
}
@available(iOS 9.0, *)
class SKAttribute : NSObject, NSSecureCoding {
  init(name: String, type: SKAttributeType)
  var name: String { get }
  var type: SKAttributeType { get }
}
@available(iOS 9.0, *)
class SKAttributeValue : NSObject, NSSecureCoding {
  convenience init(float value: Float)
  convenience init(vectorFloat2 value: vector_float2)
  convenience init(vectorFloat3 value: vector_float3)
  convenience init(vectorFloat4 value: vector_float4)
  var floatValue: Float
  var vectorFloat2Value: vector_float2
  var vectorFloat3Value: vector_float3
  var vectorFloat4Value: vector_float4
}
