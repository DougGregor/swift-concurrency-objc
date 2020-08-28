
@available(iOS 11.0, *)
class MLMultiArrayConstraint : NSObject, NSSecureCoding {
  var shape: [NSNumber] { get }
  var dataType: MLMultiArrayDataType { get }
  @available(iOS 12.0, *)
  var shapeConstraint: MLMultiArrayShapeConstraint { get }
}
