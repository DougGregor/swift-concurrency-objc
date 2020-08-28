
@available(iOS 12.0, *)
struct HKClinicalTypeIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HKClinicalTypeIdentifier {
  @available(iOS 12.0, *)
  static let allergyRecord: HKClinicalTypeIdentifier
  @available(iOS 12.0, *)
  static let conditionRecord: HKClinicalTypeIdentifier
  @available(iOS 12.0, *)
  static let immunizationRecord: HKClinicalTypeIdentifier
  @available(iOS 12.0, *)
  static let labResultRecord: HKClinicalTypeIdentifier
  @available(iOS 12.0, *)
  static let medicationRecord: HKClinicalTypeIdentifier
  @available(iOS 12.0, *)
  static let procedureRecord: HKClinicalTypeIdentifier
  @available(iOS 12.0, *)
  static let vitalSignRecord: HKClinicalTypeIdentifier
  @available(iOS 14.0, *)
  static let coverageRecord: HKClinicalTypeIdentifier
}
extension HKObjectType {
  @available(iOS 12.0, *)
  class func clinicalType(forIdentifier identifier: HKClinicalTypeIdentifier) -> HKClinicalType?
}
@available(iOS 12.0, *)
class HKClinicalType : HKSampleType {
}
