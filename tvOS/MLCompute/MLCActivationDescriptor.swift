
@available(tvOS 14.0, *)
class MLCActivationDescriptor : NSObject, NSCopying {
  var activationType: MLCActivationType { get }
  var a: Float { get }
  var b: Float { get }
  var c: Float { get }
  convenience init?(type activationType: MLCActivationType)
  convenience init?(type activationType: MLCActivationType, a: Float)
  convenience init?(type activationType: MLCActivationType, a: Float, b: Float)
  convenience init?(type activationType: MLCActivationType, a: Float, b: Float, c: Float)
}
