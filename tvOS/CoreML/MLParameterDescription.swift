
@available(tvOS 14.0, *)
class MLParameterDescription : NSObject, NSSecureCoding {
  var key: MLParameterKey { get }
  var defaultValue: Any { get }
  var numericConstraint: MLNumericConstraint? { get }
}
