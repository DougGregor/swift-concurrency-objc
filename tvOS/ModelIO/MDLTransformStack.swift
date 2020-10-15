
enum MDLTransformOpRotationOrder : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case XYZ
  case XZY
  case YXZ
  case YZX
  case ZXY
  case ZYX
}
@available(tvOS 11.0, *)
protocol MDLTransformOp {
  var name: String { get }
  func float4x4(atTime time: TimeInterval) -> matrix_float4x4
  func double4x4(atTime time: TimeInterval) -> matrix_double4x4
  func isInverseOp() -> Bool
}
@available(tvOS 11.0, *)
class MDLTransformRotateXOp : NSObject, MDLTransformOp {
  var animatedValue: MDLAnimatedScalar { get }
}
@available(tvOS 11.0, *)
class MDLTransformRotateYOp : NSObject, MDLTransformOp {
  var animatedValue: MDLAnimatedScalar { get }
}
@available(tvOS 11.0, *)
class MDLTransformRotateZOp : NSObject, MDLTransformOp {
  var animatedValue: MDLAnimatedScalar { get }
}
@available(tvOS 11.0, *)
class MDLTransformRotateOp : NSObject, MDLTransformOp {
  var animatedValue: MDLAnimatedVector3 { get }
}
@available(tvOS 11.0, *)
class MDLTransformTranslateOp : NSObject, MDLTransformOp {
  var animatedValue: MDLAnimatedVector3 { get }
}
@available(tvOS 11.0, *)
class MDLTransformScaleOp : NSObject, MDLTransformOp {
  var animatedValue: MDLAnimatedVector3 { get }
}
@available(tvOS 11.0, *)
class MDLTransformMatrixOp : NSObject, MDLTransformOp {
  var animatedValue: MDLAnimatedMatrix4x4 { get }
}
@available(tvOS 12.0, *)
class MDLTransformOrientOp : NSObject, MDLTransformOp {
  var animatedValue: MDLAnimatedQuaternion { get }
}
@available(tvOS 11.0, *)
class MDLTransformStack : NSObject, NSCopying, MDLTransformComponent {
  func addTranslateOp(_ animatedValueName: String, inverse: Bool) -> MDLTransformTranslateOp
  func addRotateXOp(_ animatedValueName: String, inverse: Bool) -> MDLTransformRotateXOp
  func addRotateYOp(_ animatedValueName: String, inverse: Bool) -> MDLTransformRotateYOp
  func addRotateZOp(_ animatedValueName: String, inverse: Bool) -> MDLTransformRotateZOp
  func addRotateOp(_ animatedValueName: String, order: MDLTransformOpRotationOrder, inverse: Bool) -> MDLTransformRotateOp
  func addScaleOp(_ animatedValueName: String, inverse: Bool) -> MDLTransformScaleOp
  func addMatrixOp(_ animatedValueName: String, inverse: Bool) -> MDLTransformMatrixOp
  func addOrientOp(_ animatedValueName: String, inverse: Bool) -> MDLTransformOrientOp
  func animatedValue(withName name: String) -> MDLAnimatedValue
  func float4x4(atTime time: TimeInterval) -> matrix_float4x4
  func double4x4(atTime time: TimeInterval) -> matrix_double4x4
  func count() -> Int
  var transformOps: [MDLTransformOp] { get }
}
