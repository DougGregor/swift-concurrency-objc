
@available(tvOS 12.0, *)
class MLMultiArrayShapeConstraint : NSObject, NSSecureCoding {
  var type: MLMultiArrayShapeConstraintType { get }
  var sizeRangeForDimension: [NSValue] { get }
  var enumeratedShapes: [[NSNumber]] { get }
}
