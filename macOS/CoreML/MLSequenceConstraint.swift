
@available(macOS 10.14, *)
class MLSequenceConstraint : NSObject, NSSecureCoding {
  var valueDescription: MLFeatureDescription { get }
  var countRange: NSRange { get }
}
