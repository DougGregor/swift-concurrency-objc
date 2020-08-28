
@available(tvOS 11.0, *)
class MLMultiArrayConstraint : NSObject, NSSecureCoding {
  var shape: [NSNumber] { get }
  var dataType: MLMultiArrayDataType { get }
  @available(tvOS 12.0, *)
  var shapeConstraint: MLMultiArrayShapeConstraint { get }
}
