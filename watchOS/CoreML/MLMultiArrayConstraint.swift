
@available(watchOS 4.0, *)
class MLMultiArrayConstraint : NSObject, NSSecureCoding {
  var shape: [NSNumber] { get }
  var dataType: MLMultiArrayDataType { get }
  @available(watchOS 5.0, *)
  var shapeConstraint: MLMultiArrayShapeConstraint { get }
}
