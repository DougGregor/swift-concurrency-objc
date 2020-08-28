
@available(tvOS 12.0, *)
class MLSequenceConstraint : NSObject, NSSecureCoding {
  var valueDescription: MLFeatureDescription { get }
  var countRange: NSRange { get }
}
