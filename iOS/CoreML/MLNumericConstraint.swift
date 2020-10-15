
@available(iOS 13.0, *)
class MLNumericConstraint : NSObject, NSSecureCoding {
  var minNumber: NSNumber { get }
  var maxNumber: NSNumber { get }
  var enumeratedNumbers: Set<NSNumber>? { get }
}
