
@available(tvOS 9.0, *)
protocol MDLTransformComponent : MDLComponent {
  var matrix: matrix_float4x4 { get set }
  var resetsTransform: Bool { get set }
  var minimumTime: TimeInterval { get }
  var maximumTime: TimeInterval { get }
  var keyTimes: [NSNumber] { get }
  optional func setLocalTransform(_ transform: matrix_float4x4, forTime time: TimeInterval)
  optional func setLocalTransform(_ transform: matrix_float4x4)
  optional func localTransform(atTime time: TimeInterval) -> matrix_float4x4
  optional static func globalTransform(with object: MDLObject, atTime time: TimeInterval) -> matrix_float4x4
}
@available(tvOS 9.0, *)
class MDLTransform : NSObject, NSCopying, MDLTransformComponent {
  @available(tvOS, introduced: 9.0, deprecated: 11.0)
  convenience init(identity: ())
  convenience init(transformComponent component: MDLTransformComponent)
  convenience init(transformComponent component: MDLTransformComponent, resetsTransform: Bool)
  convenience init(matrix: matrix_float4x4)
  convenience init(matrix: matrix_float4x4, resetsTransform: Bool)
  func setIdentity()
  func translation(atTime time: TimeInterval) -> vector_float3
  func rotation(atTime time: TimeInterval) -> vector_float3
  func shear(atTime time: TimeInterval) -> vector_float3
  func scale(atTime time: TimeInterval) -> vector_float3
  @available(tvOS 11.0, *)
  func setMatrix(_ matrix: matrix_float4x4, forTime time: TimeInterval)
  func setTranslation(_ translation: vector_float3, forTime time: TimeInterval)
  func setRotation(_ rotation: vector_float3, forTime time: TimeInterval)
  func setShear(_ shear: vector_float3, forTime time: TimeInterval)
  func setScale(_ scale: vector_float3, forTime time: TimeInterval)
  func rotationMatrix(atTime time: TimeInterval) -> matrix_float4x4
  var translation: vector_float3
  var rotation: vector_float3
  var shear: vector_float3
  var scale: vector_float3
}
