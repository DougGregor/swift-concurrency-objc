
@available(iOS 12.0, *)
struct HKFHIRResourceType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HKFHIRResourceType {
  @available(iOS 12.0, *)
  static let allergyIntolerance: HKFHIRResourceType
  @available(iOS 12.0, *)
  static let condition: HKFHIRResourceType
  @available(iOS 14.0, *)
  static let coverage: HKFHIRResourceType
  @available(iOS 12.0, *)
  static let immunization: HKFHIRResourceType
  @available(iOS 12.0, *)
  static let medicationDispense: HKFHIRResourceType
  @available(iOS 12.0, *)
  static let medicationOrder: HKFHIRResourceType
  @available(iOS 14.0, *)
  static let medicationRequest: HKFHIRResourceType
  @available(iOS 12.0, *)
  static let medicationStatement: HKFHIRResourceType
  @available(iOS 12.0, *)
  static let observation: HKFHIRResourceType
  @available(iOS 12.0, *)
  static let procedure: HKFHIRResourceType
}
@available(iOS 12.0, *)
class HKFHIRResource : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 14.0, *)
  @NSCopying var fhirVersion: HKFHIRVersion { get }
  var resourceType: HKFHIRResourceType { get }
  var identifier: String { get }
  var data: Data { get }
  var sourceURL: URL? { get }
}
