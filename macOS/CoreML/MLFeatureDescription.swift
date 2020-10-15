
@available(macOS 10.13, *)
class MLFeatureDescription : NSObject, NSCopying, NSSecureCoding {
  var name: String { get }
  var type: MLFeatureType { get }
  var isOptional: Bool { get }
  func isAllowedValue(_ value: MLFeatureValue) -> Bool
}
@available(macOS 10.13, *)
extension MLFeatureDescription {
  var multiArrayConstraint: MLMultiArrayConstraint? { get }
  var imageConstraint: MLImageConstraint? { get }
  var dictionaryConstraint: MLDictionaryConstraint? { get }
  @available(macOS 10.14, *)
  var sequenceConstraint: MLSequenceConstraint? { get }
}
