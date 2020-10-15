
@available(macOS 10.13, *)
class MLMultiArrayConstraint : NSObject, NSSecureCoding {
  var shape: [NSNumber] { get }
  var dataType: MLMultiArrayDataType { get }
  @available(macOS 10.14, *)
  var shapeConstraint: MLMultiArrayShapeConstraint { get }
}
