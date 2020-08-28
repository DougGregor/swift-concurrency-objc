
@available(iOS 12.0, *)
class MLSequence : NSObject, NSSecureCoding {
  var type: MLFeatureType { get }
  convenience init(empty type: MLFeatureType)
  convenience init(strings stringValues: [String])
  var stringValues: [String] { get }
  convenience init(int64s int64Values: [NSNumber])
  var int64Values: [NSNumber] { get }
}
