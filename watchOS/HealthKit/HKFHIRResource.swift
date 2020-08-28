
@available(watchOS 5.0, *)
struct HKFHIRResourceType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HKFHIRResourceType {
  @available(watchOS 5.0, *)
  static let allergyIntolerance: HKFHIRResourceType
  @available(watchOS 5.0, *)
  static let condition: HKFHIRResourceType
  @available(watchOS 7.0, *)
  static let coverage: HKFHIRResourceType
  @available(watchOS 5.0, *)
  static let immunization: HKFHIRResourceType
  @available(watchOS 5.0, *)
  static let medicationDispense: HKFHIRResourceType
  @available(watchOS 5.0, *)
  static let medicationOrder: HKFHIRResourceType
  @available(watchOS 7.0, *)
  static let medicationRequest: HKFHIRResourceType
  @available(watchOS 5.0, *)
  static let medicationStatement: HKFHIRResourceType
  @available(watchOS 5.0, *)
  static let observation: HKFHIRResourceType
  @available(watchOS 5.0, *)
  static let procedure: HKFHIRResourceType
}
@available(watchOS 5.0, *)
class HKFHIRResource : NSObject, NSSecureCoding, NSCopying {
  @available(watchOS 7.0, *)
  @NSCopying var fhirVersion: HKFHIRVersion { get }
  var resourceType: HKFHIRResourceType { get }
  var identifier: String { get }
  var data: Data { get }
  var sourceURL: URL? { get }
}
