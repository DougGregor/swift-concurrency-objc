
@available(watchOS 5.0, *)
struct HKClinicalTypeIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HKClinicalTypeIdentifier {
  @available(watchOS 5.0, *)
  static let allergyRecord: HKClinicalTypeIdentifier
  @available(watchOS 5.0, *)
  static let conditionRecord: HKClinicalTypeIdentifier
  @available(watchOS 5.0, *)
  static let immunizationRecord: HKClinicalTypeIdentifier
  @available(watchOS 5.0, *)
  static let labResultRecord: HKClinicalTypeIdentifier
  @available(watchOS 5.0, *)
  static let medicationRecord: HKClinicalTypeIdentifier
  @available(watchOS 5.0, *)
  static let procedureRecord: HKClinicalTypeIdentifier
  @available(watchOS 5.0, *)
  static let vitalSignRecord: HKClinicalTypeIdentifier
  @available(watchOS 7.0, *)
  static let coverageRecord: HKClinicalTypeIdentifier
}
extension HKObjectType {
  @available(watchOS 5.0, *)
  class func clinicalType(forIdentifier identifier: HKClinicalTypeIdentifier) -> HKClinicalType?
}
@available(watchOS 5.0, *)
class HKClinicalType : HKSampleType {
}
