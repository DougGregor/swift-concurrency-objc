
@available(tvOS 11.0, *)
class MDLSkeleton : MDLObject, NSCopying {
  var jointPaths: [String] { get }
  var jointBindTransforms: MDLMatrix4x4Array { get }
  var jointRestTransforms: MDLMatrix4x4Array { get }
  init(name: String, jointPaths: [String])
}
@available(tvOS 11.0, *)
protocol MDLJointAnimation {
}
@available(tvOS 11.0, *)
class MDLPackedJointAnimation : MDLObject, NSCopying, MDLJointAnimation {
  var jointPaths: [String] { get }
  var translations: MDLAnimatedVector3Array { get }
  var rotations: MDLAnimatedQuaternionArray { get }
  var scales: MDLAnimatedVector3Array { get }
  init(name: String, jointPaths: [String])
}
@available(tvOS 11.0, *)
class MDLAnimationBindComponent : NSObject, NSCopying, MDLComponent {
  var skeleton: MDLSkeleton?
  var jointAnimation: MDLJointAnimation?
  var jointPaths: [String]?
  var geometryBindTransform: matrix_double4x4
}
