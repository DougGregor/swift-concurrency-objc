
@available(watchOS 4.0, *)
class MLFeatureDescription : NSObject, NSCopying, NSSecureCoding {
  var name: String { get }
  var type: MLFeatureType { get }
  var isOptional: Bool { get }
  func isAllowedValue(_ value: MLFeatureValue) -> Bool
}
@available(watchOS 4.0, *)
extension MLFeatureDescription {
  var multiArrayConstraint: MLMultiArrayConstraint? { get }
  var imageConstraint: MLImageConstraint? { get }
  var dictionaryConstraint: MLDictionaryConstraint? { get }
  @available(watchOS 5.0, *)
  var sequenceConstraint: MLSequenceConstraint? { get }
}
